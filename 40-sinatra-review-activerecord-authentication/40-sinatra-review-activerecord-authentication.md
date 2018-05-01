
# Glue-ing it Together

Today we will be putting a lot of pieces together so be prepared to receive a lot of information.

## Database Migrations

_A database migration is the process by which we make changes to our database either by importing new data into or modifying the structure of a database. Migrations in ActiveRecord are files that represent changes to your database using ruby code._

Advantages:
- It's much easier to work on teams
- It's easier to see what changes have been made to the database
- It's much easier to reverse or modify changes to a database

Disadvantages:
- It adds a little complexity
- It can be a little confusing at first

### Remember `import.sql` ?

So far, you have been creating your schema via import scripts that you run on the database. Going forward, we will be utilizing migrations to leverage ruby to create our schema for us. Therefore, we will not be importing our database structure using a `import.sql` file.

### How To:

In our `Gemfile`:
```ruby
# Gemfile
source "https://rubygems.org"

gem "sinatra"
gem "activerecord"
gem "sqlite3"

# this command allows us to execute activerecord
#   migration commands
gem "sinatra-activerecord"
gem "rake"
```

In our `app.rb`:
```ruby
# app.rb

require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:[name of database file]"

# ... the rest of the code below get "/", post "/", etc
```

We also need to create a file named `Rakefile`:

```ruby
# Rakefile
require 'sinatra/activerecord/rake'
require './app'
```

Once we have these in place, we can run the following command in the terminal:

```bash
$ rake db:create_migration NAME=[name of migration file to create]
```

#### Naming Migrations

Choose a name that represents the change being made to the database
  - `create_users_table`
  - `create_posts_table`
  - `create_comments_table`
  - `remove_first_name_from_users`
  - `add_content_to_posts`

This command above creates a new file in a folder `db/migrate/` that houses a migration file with the same name you chose above. If we would have chosen the name `create_users_table` then it create a file within the `db/migrate` folder called `2018300409813_create_users_table` where `2018300409813` is a timestamp of when it was created to keep all migrations in order.

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

### Common Data Types

Data types in ActiveRecord Migrations translate behind the scenes to sqlite3 / postgres datatypes as follows:

- `:boolean` => BOOLEAN
- `:datetime` => DATETIME
- `:float` => FLOAT
- `:integer` => INTEGER
- `:string` => VARCHAR
- `:text` => TEXT

### Running a Migration

In order to run a migration, we run the following command on the terminal:

```bash
$ rake db:migrate
```

After running a migration you should have a `users` table

[RoR Guides: Migrations](http://edgeguides.rubyonrails.org/active_record_migrations.html)

## Exercise

Let's create a `users` and `posts` table. Each `User` has many posts and each `Post` belongs to `User`. Try loading your sinatra controller file into `irb` to verify both models are behaving accordingly.

## Authentication

_Authentication is the process of determining whether someone or something is, in fact, who or what it is declared to be._

### Cookies

_A cookie is a file that lives is stored on your computer (and can be accessed through your browser) that stores website activity. The lifetime of a cookie is determined on cookie creation but can be anything from 1 minute to 1 year._

Cookies can be used for storing convenient information for use by a developer:
- Storing whether a user has already seen a popup ad
- Storing whether a user has seen a tutorial on a website
- Tracking whether or not a user is signed in to your website

But can also be used for other things:
- Tracking where you have visited on a website

### Sessions

_A session represents the span of time in which a user utilizes your application. This information is tracked via the use of a cookie._

We can enable session on a sinatra file by adding the setting:

```
enable :sessions
```

into our `app.rb` sinatra controller file

#### How To Use

We can utilize a session by using a special variable called `session`. We can store things in the session that we can access not only in our controller file but also in our erb templates.

```ruby
# we can store things in sessions
session[:tutorial_seen] = true

# we can also store the user id of a logged in user
session[:user_id] = 1
```

The above code sample gives us a hint at how we can determine if a user is logged in or not:

```ruby
if session[:user_id]
  # the user is logged in
else
  # the user is not logged in
end
```

But how would we sign someone in to begin with:

```ruby
# displays sign in form
get "/sign-in" do
  erb :sign_in
end

# responds to sign in form
post "/sign-in" do
  @user = User.find_by(username: params[:username])

  # checks to see if the user exists
  #   and also if the user password matches the password in the db
  if @user && @user.password == params[:password]
    # this line signs a user in
    session[:user_id] = @user.id
  else
    # if user does not exist or password does not match then
    #   redirect the user to the sign in page
    redirect "/sign-in"
  end
end
```

How would we sign someone out:

```ruby
# when hitting this get path via a link
#   it would reset the session user_id and redirect
#   back to the homepage
get "/sign-out" do
  # this is the line that signs a user out
  session[:user_id] = nil
  redirect "/"
end
```

But wait, how would we add them to the db:

```ruby
# displays signup form
#   with fields for relevant user information like:
#   username, password
get "/sign-up" do
  erb :sign_up
end

post "/sign-up" do
  @user = User.create(
    username: params[:username],
    password: params[:password]
  )

  # this line does the signing in
  session[:user_id] = @user.id

  # assuming this page exists
  redirect "/signed-in-page"
end
```

Lastly, how would we hide / show links based on signed in status:

```erb
<!-- layout.rb -->
<!DOCTYPE html>
<html>
<head>
</head>
<body>
  <% if session[:user_id] %>

    <!-- only show this code when signed in -->

    <!-- clicking on this link will hit the get "/sign-out" route -->
    <a href="/sign-out" />Sign out</a>

  <% else %>

    <!-- only show this code when signed out -->
    <a href="/sign-in" />Sign In</a>
    <a href="/sign-up" />Sign Up</a>
  
  <% end >

  <%= yield %>
</body>
</html>
```

## Exercise

Let's create a simple authentication system, by creating the following 5 routes:
- `get "sign-up"` - displays a sign up form
- `post "sign-up"` - responds to sign up form
- `get "sign-in"` - displays sign in form
- `post "sign-in"` - responds to sign in form
- `get "sign-out"` - signs a user out of session

For each of these, try to follow the steps above to write code that authenticates the user. Remember to create a users table beforehand to actually store user information.

## Workshop

[Ling's CMS Builder](https://drive.google.com/open?id=1GGtguV1WVJBZ7Xf1V5Fpd29dLcPLwUqWSCdfnH7jPrQ)
