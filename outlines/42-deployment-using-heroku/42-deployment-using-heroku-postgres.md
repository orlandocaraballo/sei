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

## Heroku w/ Postgres

In order to facilitate this transition we need to do several things:
- Modify the `Gemfile` if needed
- Configure sinatra controller file
- Push to heroku

### Configure the sinatra controller file

#### Simple

```ruby
# app.rb

# ...beginning of file

# this will ensure this will only be used locally
configure :development do
  set :database, "postgresql:[name of database]"
end

# this will ensure this will only be used on production
configure :production do
  # this environment variable is auto generated/set by heroku
  #   check Settings > Reveal Config Vars on your heroku app admin panel
  set :database, ENV["DATABASE_URL"]
end

# ...rest of file
```
#### More Elaborate

```ruby
# ...beginning of file

configure :development do
  # in this case 
  set :database, {
    adapter: "postgresql", 
    database: "[name of database]", 
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

production:
  adapter: postgresql
  encoding: unicode
  database: ENV["DATABASE_URL"]
```

[Sinatra: Postgresql](http://recipes.sinatrarb.com/p/databases/postgresql-activerecord)

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