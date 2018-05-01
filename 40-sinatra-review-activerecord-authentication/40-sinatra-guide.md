# Sinatra Guide w/ ActiveRecord

This is intended to be a step by guide for students to understand the
workflow for working on databases.

## Basic Website Steps

These steps outline how to get a basic Sinatra website up and running without a database. Once you have this structure down and are comfortable, then move on to the database portion.

- Create new project folder and `cd` into it
- Create Gemfile with gems you plan to use (verify you have the necessary gems)
- Run `bundle` command in the terminal to install gems
- Determine which pages you need on your site (`/profile`, `/sign-in`, etc)
- Create `get` routes in your sinatra controller file (`app.rb`) that match those paths (`get "/profile"`, `get "/sign-in"`)
- Create a `views` subfolder
- Create templates for said pages (within a `views` subfolder)
- Add template calls for every `get` route:

```ruby
get "/sign-in" do
  erb :sign_in
end
```

- Verify when you hit route in the web browser that displays information in the corresponding template
- Create a subfolder called `views`
- Create `layout.erb` file within the `views` subfolder and within this file create the structure of your html site (this includes the `<head>` and `<body>` tags)
- Add in the statement `<%= yield %>` within the `layout.erb` file, this will be where your prior templates (`profile.erb`, `sign_in.erb`) will display their information
- Create a subfolder called `public`
- Any assets you need for your website (images, css, javascript) will go within the `public` subfolder

__Tip:__ Try becoming comfortable with how routing works by creating navigation links that navigate you across the site. This understanding is essential to make sense of ActiveRecord within the context of Sinatra.

## Database Backed Website Steps

Now that you have a basic Sinatra structure with templates and routes you can start building on this by adding a database.

### Structure and Workflow

- Add, if you haven't already, all the necessary gems needed for working with databases. This includes `gem "activerecord"`, `gem "sinatra-activerecord"`, etc __(*)__
- Run the `bundle` command
- Create a `Rakefile` __(*)__
- Add the following into your `Rakefile` __(*)__

```ruby
require "sinatra/activerecord/rake"
require "./[sinatra controller file name]"
```

- Add the following into your Sinatra controller file.

```ruby
require "sinatra/activerecord"
require "./models"
require "sinatra/flash"

set :database, "sqlite3:[database file name]"
```

*Where [database name] represents the name you choose for your database.*

- Run the `rake db:create_migration NAME=[name of your migration]` command in the terminal to create a migration file
- After creating this migration, edit its `change` method to reflect the changes you want to make to your database (`create_table :[table name]`, `add_column :[table name]`)
- Execute your migration by running the `rake db:migrate`
- Create a `models.rb` file __(*)__
- You can now define your models (like `class User < ActiveRecord::Base`) within the `models.rb` file.
- Add the `require "./models"` line into your Sinatra controller file. __(*)__
- Now you can declare relationships between models within the class itself (like `has_many :posts` within the `User` class)
- Further database changes should be implemented by creating & defining new migrations, then running them. (steps 5-10)

__(*) = You only need to run this step once.__

### Data Retrieval

If you need to retrieve data from the database (retrieve all posts or retrieve a user) then you have to use the ActiveRecord model associated with that table in the database (e.g. `User.where(username: "orlando")`, `Post.find(2)`). You have access to the models anywhere in your Sinatra controller routes.

```ruby
get "/posts" do
  @posts = Post.all
  @user = User.first
end

get "/users" do
  @users = User.all
  @post = Post.last
end
```

Both routes have access to the `Post` and `User` model defined in the `models.rb` file. Why? Because we required it within our Sinatra controller file. `require "./models"`