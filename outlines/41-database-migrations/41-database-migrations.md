<img src="migration.jpg" width="100%">

# Database Migrations

_A database migration is the process by which we make changes to our database either by importing new data into or modifying the structure of a database. Migrations in ActiveRecord are files that represent changes to your database using ruby code._

Advantages:
- It's much easier to work on teams
- It's easier to see what changes have been made to the database
- It's much easier to reverse or modify changes to a database

Disadvantages:
- It adds a little complexity
- It can be a little confusing at first

## Remember `import.sql` ?

So far, you have been creating your schema via import scripts that you run on the database. Going forward, we will be utilizing migrations to leverage ruby to create our schema for us. Therefore, we will not be importing our database structure using a `import.sql` file.

## How To

There are three general steps to utilizing database migrations
- Create the migration
- Modify the migration
- Run the migration

## Rake

_Rake is a gem that provides us a framework to define and execute tasks in the terminal. We will be using rake to run commands on our database._

### Setup

In our `Gemfile`:
```ruby
# Gemfile
source 'https://rubygems.org'

gem 'sinatra'
gem 'activerecord'
gem 'pg'

# this gem allows us to utilize the set :database, 
#   'postgresql:[database name]'
gem 'sinatra-activerecord'

# this gem allows us to execute activerecord
#   migration commands
gem 'rake'
```

In our `app.rb`:
```ruby
# app.rb
require 'sinatra'
require_relative 'models'

# ... the rest of the code below get "/", post "/", etc
```

In our `models.rb`:

```ruby
require 'sinatra/activerecord'
require 'pg'

set :database, 'postgresql:[name of database]'
```

We also need to create a file named `Rakefile` in our sinatra root folder:

```ruby
# Rakefile
require 'sinatra/activerecord/rake'

# this line loads our app.rb file
#   the app.rb file:
#     - loads models.rb file
#   this models.rb file:
#     - loads sinatra/activerecord'
#     - lods pg
#     - sets the database to 'postgresql:[name of the database]'
require_relative 'app'
```

Once we have these in place, we can run the following command in the terminal:

```bash
$ rake -T
```

This command lists all available tasks that `rake` is able to run on the terminal. If everything is setup properly, you should see the following:

```bash
rake db:create              # Creates the database from DATABASE_URL or config/database.yml for the ...
rake db:create_migration    # Create a migration (parameters: NAME, VERSION)
rake db:drop                # Drops the database from DATABASE_URL or config/database.yml for the cu...
rake db:environment:set     # Set the environment value for the database
rake db:fixtures:load       # Loads fixtures into the current environment's database
rake db:migrate             # Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)
rake db:migrate:status      # Display status of migrations
rake db:rollback            # Rolls the schema back to the previous version (specify steps w/ STEP=n)
rake db:schema:cache:clear  # Clears a db/schema_cache.yml file
rake db:schema:cache:dump   # Creates a db/schema_cache.yml file
rake db:schema:dump         # Creates a db/schema.rb file that is portable against any DB supported ...
rake db:schema:load         # Loads a schema.rb file into the database
rake db:seed                # Loads the seed data from db/seeds.rb
rake db:setup               # Creates the database, loads the schema, and initializes with the seed ...
rake db:structure:dump      # Dumps the database structure to db/structure.sql
rake db:structure:load      # Recreates the databases from the structure.sql file
rake db:version             # Retrieves the current schema version number
```

### Rakefile

_A `Rakefile` is a file that is used by a gem called `rake`. `rake` is a bash program that allows us to utilize frequently used tasks by running the `rake` command along with the task name._

```ruby
# the following line loads all rake tasks provided by the sinatra/activerecord gem
require 'sinatra/activerecord/rake'
```

`rake` looks for what tasks it can run by looking within the `Rakefile`. You can also define your own custom tasks within this same file. Because of the line `require 'sinatra/activerecord/rake'`, this loads all these defined tasks into the `Rakefile`.

[Culttt: Understanding and Using Ruby Rake](https://www.culttt.com/2015/08/05/understanding-and-using-ruby-rake/)

## Migration Procedure

_A migration is a file that lives in your filesystem that indicates a change that should be made to the database. In an activerecord based system, this will be located in the `db` folder within the root of your application under the subfolder `migrate`._

## Create Migrations

To create a migration we run the command:
```bash
$ rake db:create_migration NAME=[name of migration]
```

For example:
```bash
$ rake db:create_migration NAME=create_users_table
```

This command creates a new migration within the `/db/migrate` folder named `20180501110212_create_users_table.rb`.

### Naming Migrations

_Choosing a name for our migrations is important because we can refer back to these migrations as a later date and the name gives us valuable information on what we expect the migration to do._

Choose a name that represents the change being made to the database
  - `create_users_table`
  - `create_posts_table`
  - `create_comments_table`
  - `remove_first_name_from_users`
  - `add_content_to_posts`

This command above creates a new file in a folder `db/migrate/` that houses a migration file with the same name you chose above. If we would have chosen the name `create_users_table` then it create a file within the `db/migrate` folder called `2018300409813_create_users_table` where `2018300409813` is a timestamp of when it was created to keep all migrations in order.

### Modifying a Migration

When you open this file it should look something like this:

```ruby
class CreateUsersTable < ActiveRecord::Migration[5.0]
  def change
    # your code would go here
    #   you can run one or more commands within this change method
    #   when you run the migration, it will execute everything
    #   within this method
  end
end
```

The comment above indicates where you would write code to do something to the database. The most common commands that you will likely run are as follows:

- `create_table` - [Creates a new table](https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/create_table)
- `change_table` - [Changes properties of a table](https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/change_table)
- `rename_table` - [Renames a table](https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/rename_table)
- `drop_table` - [Deletes a table](https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/drop_table)
- `add_column` - [Adds a column to a table](https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/add_column)
- `remove_column` - [Removes a column from a table](https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/remove_column)

Using `create_table` as an example:

```ruby
class CreateUsersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
```

The above code would create a table called users with two columns when the migration is run:
- `username` of type `string`
- `password` of type `string`

#### Common Data Types

Data types in ActiveRecord Migrations translate behind the scenes to postgres datatypes as follows:

- `:boolean` => BOOLEAN
- `:datetime` => DATETIME
- `:float` => FLOAT
- `:integer` => INTEGER
- `:string` => VARCHAR
- `:text` => TEXT

#### Multiple Tasks Per Migration

We can also do multiple things within a migration:

```ruby
# notice how the name is reflective of the actions
#   taken within the migration
class CleanUpTables < ActiveRecord::Migration[5.0]
  def change
    # this deletes the comments table
    drop_table :comments

    # this adds a column "modified_date" to the "posts" table
    add_column :posts, :modified_date, :datetime

    # this will rename the "userz" table to "users"
    rename_table :userz, :users
  end
end
```

### Running a Migration

In order to run a migration, we run the following command on the terminal:

```bash
$ rake db:migrate
```

After running a migration, it should execute the commands indicated in the migration file.

### Reversing a Migration

If you need to reverse a migration you can run the following command on the terminal:

```bash
$ rake db:rollback

# if you want to rollback more than one migration at the same time you can
#   indicate how many migrations you want to reverse via the STEP flag
$ rake db:rollback STEP=3
# this would rollback the last 3 migrations
```

### Redoing a Migration

If you need to rollback a migration and then immediately migrating it back, you can run the following command on the terminal:

```bash
$ rake db:migrate:redo

# if you want to rollback more than one migration at the same time you can
#   indicate how many migrations you want to redo via the STEP flag
$ rake db:migrate:redo STEP=3
# this would redo the last 3 migrations
```

### Viewing Migration Status

If you need to check the status of all migrations you can run the following command on the terminal:

```bash
$ rake db:migrate:status
```

## Seed Data

_Seed data is data that is necessary to have in your app in order for it to work._

Examples
- A starting user account
- Information hard coded in the database that is not user generated (e.g list of country codes or products)

### How To

There are three steps to creating seed data:
- Create the `db/seeds.rb` file
- Add seed data witihn said file
- Execute 

```ruby
# db/seeds.rb

# we require our models here
require "./models"

# in this file we can make use of our ActiveRecord models to create starter data
#   such as some default users for our app
User.create(username: "orlandoc", password: "12345")
```

Then we run the command:

```bash
$ rake db:seed
```

- [XYZPub: Populating the Database with seeds.rb](http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html)
- [RoR Guides: Migrations](http://edgeguides.rubyonrails.org/active_record_migrations.html)

## Testing Your Database

Now that we are using database migrations we have modify the way we test our models. We are now setting our database within the sinatra controller file via the `set :database` command as well as loading our models into this same file via the `require "./models"` command. Therefore, in order to test our models in irb:

```bash
$ irb
2.5.1 :001 > require "./app"
 => true 
2.5.1 :002 > User.first
D, [2018-05-01T08:47:27.385023 #83632] DEBUG -- :   User Load (0.5ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => #<User id: 1, username: "orlandoc", password: "12345", created_at: "2018-05-01 11:09:02", updated_at: "2018-05-01 11:09:02"> 
```

**Note:** Now we can see the database queries that are run when executing activerecord commands

## Sinatra Guide

Running all these commands can ba very confusing and time confusing but don't fret. I have written a step by step guide to creating a Sinatra application including the additional steps necessary to create a database backed app.

[Sinatra Guide](41-sinatra-guide.md)

## Working Version

Yes, this is a lot of code and commands to remember. Luckily, I have created a working migrated database for you to play with located in the `session_example` subfolder in the next lesson. If you need to see it working before it makes sense to you then please review that code. It is also using some authentication logic that is described in the [authentication lesson](../40-authentication/40-authentication.md).

## Exercise

Let's create a `users` and `posts` table. Each `User` has many posts and each `Post` belongs to `User`. Try loading your sinatra controller file into `irb` to verify both models are behaving accordingly.

