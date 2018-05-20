<img src="views.jpg" style="width: 100%" />

# RoR Views and Models

## Important Note

For the time being we need to drop this line in our `application.rb` file. This prevents a certain type of error from triggering when utilizing the `params` hash.

```ruby
# application.rb
# this prevents strong parameter errors
#	we will be talking about this topic later
config.action_controller.permit_all_parameters
```

## Controllers + Action Facts

- Action names correspond to what was pointed to in the route
- Controller names also correspond to what was pointed to in the route

```ruby
# routes.rb

# indicates the landing page is pointing to the
#   home controller
#   index action
root "home#index"

# indicates the notes update page is pointing to the
#   notes controller
#   update action
put "/notes/:id", to: "notes#update"
```

Controller Specific
- The file name must match the class name as follows
  - The pattern here is `[Controller Name]Controller` class name -> `[controller name]_controller` file name
  - If class name is `SessionsController` the file name must be called `sessions_controller.rb`

## Views

View folder placement and naming corresponds to the controller and action names.

```bash
/app
|- /controllers
   |- users_controller.rb
|- /views
   |- /users
      |- index.html.erb
      |- show.html.erb
      |- edit.html.erb
      |- new.html.erb
```

Notice below how the actions tell you which template rails is expecting you to create:

```ruby
class UsersController < ApplicationController
  def index
    # method: get
    # action: index
    # template: users/index.html.erb
  end

  def show
    # method: get
    # action: index
    # template: users/show.html.erb
  end

  def new
    # method: get
    # action: index
    # template: users/new.html.erb
  end

  def edit
    # method: get
    # action: index
    # template: users/edit.html.erb
  end
end
```

## Instance Variables

Instance variables assigned in the action will be available to use in the corresponding view

```ruby
# users_controller.rb
class UsersController < ApplicationController
  def index
    @users = User.all
  end
end
```

```erb
<!-- /views/users/index.html.erb -->
<%= @users.each do |user| %>
  <%= user.first_name %>
  <%= user.last_name %>
  <%= user.age %>
  <%= user.gender %>
<% end %>
```

## Partials

Partials are views that can be rendered in multiple places via the `render` method

```bash
# file system
/views
  |- /users
     |- _user.html.erb
     |- index.html.erb
     |- show.html.erb
```

```erb
# /views/users/index.html.erb
<%= @users.each do |user| %>
  <%= render "user", locals: { user: user } %>
<% end %>
```

```erb
# /views/users/show.html.erb
<%= render "user", locals: { user: @user } %>
```

```erb
<%= user.first_name %>
<%= user.last_name %>
<%= user.age %>
<%= user.gender %>
```

The `locals` key is being assigned the value of what you would like the `user` object to set to. In this way we can keep our code DRY.

## Layouts

The default layout in your app is located in `application.html.erb`

```erb
# application.html.erb
<!DOCTYPE html>
<html>
  <head>
    <title>ControllerRoutes</title>
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <%= yield %>
  </body>
</html>
```

[RoR Guides: Layouts and Rendering](http://guides.rubyonrails.org/layouts_and_rendering.html)

## Model

### Commands

The following command creates a brand new model

```bash
$ rails generate model [model_name]

# this is the shorthand form
$ rails g model [model name]

# this will create a new model with the following columns
$ rails g model [model name] [column name]:[date type] [column name 2]:[data type 2] ...
```

Always remember to migrate after creating your model

```bash
$ rails db:migrate
```

### Placement

Models in Sinatra were all located one file tha you manually created

```ruby
# Sinatra
# models.rb

class User < ActiveRecord::Base
  has_many :posts
end

class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
end

class Comment < ActiveRecord::Base
  belongs_to :post
end
```

Models in ruby are separated into individual files

```ruby
# user.rb
class User < ActiveRecord::Base
  has_many :posts
end
```

```ruby
# post.rb
class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
end
```

```ruby
# comment.rb
class Comment < ActiveRecord::Base
  belongs_to :post
end
```

### Methods on Models

In RoR, much like Sinatra, we can create methods on models:

```ruby
# schema.rb
ActiveRecord::Schema.define(version: 20080906171750) do
  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string 	 "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
end

# user.rb
class User < ActiveRecord::Base
  # this method creates someone's full name based on their
  #		first and last name
  def full_name
    "#{first_name} #{last_name}"
  end
end
```

### Availability

Models are availale to us in all controllers and also all views. **However, please avoid making model calls in the view because it can be difficult to debug**

```ruby
# posts_controller.rb
class PostController < ApplicationController
  def index
    # all Post method calls are available here
    #   or in any other action
    @posts = Post.all
  end

  def show
    # you can also use Post.all, or Post.update, etc
    #   if necessary
    @post = Post.find(params[:id])
  end
end
```

### Callbacks

There are certain times when you need to run certain behavior on models every time. That is a good use case for model callbacks.

```ruby
# runs before every creation of a model record
before_create

# runs before every create / update of a model record
before_save

# runs before every update of a model record
before_update

# runs after every creation of a model record 
after_create

# runs after every create / update of a model record
after_update

# runs after every update of a model record
after_save
```

#### Example

```ruby
# user.rb
class User < ApplicationRecord
  has_one :profile

  # this ensures all our users ALWAYS
  #   have profiles
  # otherwise if you try to run the code
  #   User.find(1).profile
  #   on a user with no profile, you will get an error
  after_create :create_profile

  def create_profile
    # the rest of the profile info will be nil
    #   but the user_id will be associated with the profile
    Profile.create(user_id: self.id)
  end
end

# profile.rb
class Profile < ApplicationRecord
  belongs_to :user
end
```

## Nested Routes

_Nested routes are used to create more complex routing that involves two resources that related to each other_

Let's say you had a rails app built with users, posts and comments. Comments `belong_to` posts and posts `belong_to` users. A user `has_many` posts and a post `has_many` comments.

```ruby
# this is the simplest to construct those routes
resources :users
resources :posts
resources :comments
```

However, it might be better to represent them in such a way that indicates a hierarchy. A `comment` cannot exist without a `post` and a `post` cannot exist without a `user`. This relationship can be better represented by nesting structure.

### Examples

You can define a route that would create a pathway to all posts that belong to a user

```ruby
# this is how you would nest a route
get "users/:id/posts", to: "users#posts"

# this is equivalent to above but with the added
#   benefit of being able to add more actions
#   by adding more elements to the only array
resources :users do
  resources :posts, only: [:index]
end
```

This is how you define a route that would create a pathway to all comments that belong to a post

```ruby
get "posts/:id/comments", to: "posts#comments"

resources :posts do
  resources :comments, only: [:index]
end
```

^ Will revisit when covering form helpers

[RoR Guides: Nested Routes](http://guides.rubyonrails.org/routing.html#nested-resources)

## Practice

1. Try to create a web app that allows someone to create users
2. In that same web app, make it so that it allows someone to create posts

Note: Don't worry about authentication (sign up, sign in, sign out), we will cover that later