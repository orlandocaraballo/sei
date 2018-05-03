<img src="postgres.png" style="width: 100%">

# Database Backed Server Side Deployment

## Development Operations

_Development Operations (or devops) is not clearly defined but in my eyes it encapsulates all development operations related to the deployment and configuration of server side systems (i.e cloud computing systems)._

## Common Cloud Computing Platforms

- [Heroku](https://www.heroku.com)
- [Digital Ocean](https://www.digitalocean.com/)
- [Engineyard](https://www.engineyard.com/)
- [AWS](https://aws.amazon.com/)
- [Linode](https://www.linode.com/)

## Environments (Stages)

- `test` (optional) - a special environment used to run automated tests on your development code
- `development` - environment local to your computer
- `staging`  (optional) - environment mirroring production for testing purposes
- `production` - environment available to the public

## Environment Progression

In this course:

```
[development] => [deploy to production] => [verify production]
```

In a professional environment:

```
=> [automated tests] => [tests fail] => [write development code to pass test]
=> [automated tests] => [tests pass] => [deploy to staging] => [verify staging]
                                     => [deploy to production] => [verify production]
```

## Gemfile Groups

Gemfiles can be divided into different groups to make managing dependancies easier depending on which platform you are using it on. This can also be used to package up gems to only be installed under certain environments:

```ruby
# this will install/run on all environments
gem "sinatra"

# this will only install/run on development environments
group :development do
  gem "byebug"
end

# this will only install/run on test environments
group :test do
  gem "faker"
  gem "rspec"
end

# this will only install/run on production environments
group :production do
  gem "rollbar"
end
```

When installing your bundle you can specify which group you would like to ignore by running the following command

```bash
# this command only installs items outside of a group
#   or set to the development group
$ bundle install --without test production
```

The above command would ignore the following gems:
- faker
- rspec
- rollbar

Because they were specified for use only on `production` or `test` groups

[Bundler: Using Groups](https://bundler.io/v1.12/groups.html)

## Groups With Heroku

Heroku also makes use of bundler groups by implicitly running the following command on deploy:

```bash
# this command only installs items outside of a group
#   or set to the production group
$ bundle install --without test development
```

This information is important because on heroku, we cannot use a `sqlite3` database. We will need to swap our database to use `postgres` on production and leave it as `sqlite3` on development.

## Swapping to Postgres

In order to facilitate this transition we need to do several things:
- Modify the `Gemfile`
- Install gems without production group
- Configure sinatra controller file
- Push to heroku

### Modify the Gemfile:

```ruby
# Gemfile
# ...begining of file

group :development do
  # our sqlite3 gem will only be used locally
  #   the sqlite3 gem is an adapter for sqlite
  gem "sqlite3"
end

group :production do
  # our pg gem will only be used on production
  #   the pg gem is an adapter for postgresql
  gem "pg"
end

# ...rest of file
```

### Install gems without production group

```bash
# to prevent pg gem from being installed locally
$ bundle install --without production

# we run this command to add .bundle/config to our .gitignore
#   .bundle/config would prevent our production group from running on heroku
$ echo ".bundle/config" >> .gitignore
```

### Configure the sinatra controller file

```ruby
# app.rb

# ...beginning of file

# this will ensure this will only be used locally
configure :development do
  set :database, "sqlite3:[name of database file]"
end

# this will ensure this will only be used on production
configure :production do
  # this environment variable is auto generated/set by heroku
  #   check Settings > Reveal Config Vars on your heroku app admin panel
  set :database, ENV["DATABASE_URL"]
end

# ...rest of file
```

### Add, commit and push to heroku

```bash
$ git add -A
$ git commit -m "[your message here]"
$ git push heroku master
```

## Working with Postgres on Heroku

Once we have our app on heroku, we must run our migrations as follows:

```bash
# the "heroku run" command runs a terminal command on the heroku server
#   the "bundle exec" prefix ensures we use the gem indicated by the
#   Gemfile.lock file
$ heroku run bundle exec rake db:migrate
```

If we need to seed our database, we can run the seed command as follows:

```bash
$ heroku run bundle exec rake db:seed
```

If you find yourself dealing with errors you can debug by viewing log information:

```bash
$ heroku logs
```

[Heroku: CLI Commands](https://devcenter.heroku.com/articles/heroku-cli-commands)

## Working with Postgres Locally

### Client / Server

Postgres operates on a client server architecture. It should automatically fire up a server on your behalf when you first install it. This server hosts all communication with our database by giving us an interface with which to communicate with it. By default postgres creates a default database we can log into. However, it makes more sense if we first create a database locally and run commands on that.

### Server Start

In order to ensure our server is running locally we can run:

**OSX (Mac):**

```bash
# this starts / stops / restarts our server
$ brew services [start | stop | restart] postgresql
```

**Ubuntu (Linux):**

```bash
$ sudo service postgresql [start | stop]

# or if that doesn't work

$ sudo /sbin/service postgresql [start | stop]
```

### Setup

In order to setup our local database to use postgres we need to do the following:
- Install `postgresql` locally
- Install `pg` gem locally
- Create a database (each application should have its own database)
- Configure our sinatra controller file
- Run migrations

### Install `postgresql` locally
**OSX (Mac):**
```bash
# for the purposes of messing with settings in postgres
$ brew install postgresql
```

**Ubuntu (Linux):**
```bash
$ sudo apt-get install postgresql postgresql-contrib
$ sudo apt-get install libpq-dev
```

### Install `pg` gem locally

Change your Gemfile from:

```ruby
# Gemfile
# ...begining of file

group :development do
  # our sqlite3 gem will only be used locally
  #   the sqlite3 gem is an adapter for sqlite
  gem "sqlite3"
end

group :production do
  # our pg gem will only be used on production
  #   the pg gem is an adapter for postgresql
  gem "pg"
end

# ...rest of file
```

To:

```ruby
# Gemfile
# ...begining of file

gem "pg"

# ...rest of file
```

Then bundle

```bash
$ bundle install
```

### Create database

Postgres provides for us a command `createdb` to create database for us:

#### Linux

On linux the process is slightly more involved because all actions must be made thru the username -> `postgres` therefore:
- We must first login to our postgres account then make necessary system changes or...
- We must run our commands through the postgres user account every time

[Digital Ocean: How to Install and Use Postgresql on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04)

#### OSX (Mac)

```bash
# this creates a database called indicated by name
#   postgres does not store our information in a ".db" file
$ createdb [name of database]
```

### Configure Sinatra

#### Linux (Ubuntu)

```ruby
# ...beginning of file

configure :development do
  # in this case 
  set :database, {
    adapter: "postgresql", 
    database: "sinatra_heroku", 
    username: "[your username]",
    password: "[your password]"
  }
end

# ...test of file
```

Or more securely:

```yml
# config/database.yml
development:
  adapter: postgresql
  encoding: unicode
  database: database_name
  pool: 2
  username: ENV["DATABASE_USERNAME"]
  password: ENV["DATABASE_PASSWORD"]
```

[Sinatra: Postgresql](http://recipes.sinatrarb.com/p/databases/postgresql-activerecord)

#### OSX (Mac)

```ruby
# ...beginning of file

configure :development do
  # in this case 
  set :database, "postgres:[name of database]"
end

# ...test of file
```

### Run migrations

Because we are now dealing with a new postgres database:

```bash
$ rake db:migrate

# if we need to seed our database
$ rake db:seed
```

### More Postgres Commands

We can also communicate with our postgres database by using the `psql` command:

```bash
$ psql [name of database]

# or

$ psql -d [name of database]

# which logs us into postgres client
[name of database]=# [here we can run sql commands]
```

So if I run:

```bash
$ psql app
app=# SELECT * FROM users;
id | username | password |         created_at         |         updated_at         
----+----------+----------+----------------------------+----------------------------
  1 | orlandoc | pass     | 2018-05-02 16:22:04.745566 | 2018-05-02 16:22:04.745566
(1 row)
app=#
```

We can check how many tables we have:
```bash
app=# \d
                  List of relations
 Schema |         Name         |   Type   |   Owner   
--------+----------------------+----------+-----------
 public | ar_internal_metadata | table    | nycdafour
 public | schema_migrations    | table    | nycdafour
 public | users                | table    | nycdafour
 public | users_id_seq         | sequence | nycdafour

app=# 
```

We can ask for help:
```bash
app=# \h

ABORT                            CREATE USER MAPPING
  ALTER AGGREGATE                  CREATE VIEW
  ALTER COLLATION                  DEALLOCATE
  ALTER CONVERSION                 DECLARE
  ALTER DATABASE                   DELETE
  ALTER DEFAULT PRIVILEGES         DISCARD
  ALTER DOMAIN                     DO
  ALTER EVENT TRIGGER              DROP ACCESS METHOD
  ALTER EXTENSION                  DROP AGGREGATE
: 
```

To exit the client interface use `\quit`:

```bash
app=# \quit
$
```

We can also run an import script onto our database much like `sqlite3`:

```bash
$ psql -d [database name] -f [import sql script]

# example
$ psql -d app -f import.sql
```

## Resources

[Postgres Documentation](https://www.postgresql.org/docs/)
