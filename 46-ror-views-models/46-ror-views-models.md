
Routes + Controller Review
Routes
What is a route?
What does it do?
Manual
get '[model_name]', to: '[model_name]#show'
Automatic
resources :[model_name]
Controller
What is a controller?
Why do we have controllers?
rails g controller [controller_name]
Action
How are actions related to controllers?

View
View review
Views in Rails vs Sinatra
How do views relate to actions?
Action names correspond to view names
Commands
Same as controller
Generator creates view as well
Layouts
Differences from Sinatra
Helpers
Definition
How / When to use
Partials
Instance variables
Locals

Migrations
Migrations review
Commands
rails g migration [migration_name]
rake db:migrate
Writing migrations
Format
Possible errors

Model
Model review
ActiveRecord
Relationships
One to one
One to many
Many to many
Models in Rails vs Sinatra
Commands
rails g model [model_name]
Model methods
Callbacks
before_create
before_save
before_update
after_create
after_update
efter_save
Column Indexes

Nested Routes
Used to create more complex routing
Useful for routing to a page with data related to other models
All posts that belong to a user
get "users/:id/posts", to: "users#posts"
resources :users do
	resources :posts, only: [:index]
end
All comments that belong to a post
get "posts/:id/comments", to: "posts#comments"
resources :posts do
	resources :comments, only: [:index]
End
Will revisit when covering form helpers
