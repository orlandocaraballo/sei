
# Introduction to Ruby on Rails: Controllers + Routes

## Useful Commands

```bash
# installs rails without terminal documentation
# this installs much faster than normal
$ gem install rails --no-rdoc --no-ri

# creates a new app
# check http://localhost:3000 to verify your server
$ rails new [app_name]

# runs the rails console
$ rails console

# shows you all routes in your app
# also available via http://localhost:3000/rails/info/routes
$ rails routes

# generates a new controller
$ rails generate controller [controller name]

# runs database migration
$ rails db:migrate
```

## Routing

All routes are stored in the `/config/routes.rb`

### Simple routes

All routes dictate which controller / action will be targeted when hitting a path within your web app. The pattern being used here is as follows:

```
[method] "[path]", to: "[controller]#[action]"
```

#### Example

```ruby
get "/users", to: "users#index"
post "/posts", to: "posts#create"
put "/comments/:id", to: "comments#update"
delete "/users/:id", to: "users#destroy"
```

### Restful routing

_REST, or REpresentational State Transfer, is an architectural style for providing standards between computer systems on the web, making it easier for systems to communicate with each other_

- [CodeAcademy: What is REST?](https://www.codecademy.com/articles/what-is-rest)

The pattern being followed here is as follows:

```ruby
resources :[resource_plural]
```

#### Example

```ruby
resources :users
```

Can be used as a substitute for the following manual routes:

```ruby
get "/users", to: "users#index"
get "/users/:id", to: "users#show"
get "/users/new", to: "users#new"
get "/users/edit", to: "users#edit"

post "/users", to: "users#create"
put "/users/:id", to: "users#update"
delete "/users/:id", to: "users#destroy"
```

#### REST Verb Standards

_Different HTTP verbs  being used on the same URL (resource) by the user to represent the requested state of that resource_

GET
- All require individual views
- All display information
- Index
  - Displays all resources
  - Path: `/[resource_plural]`
  - Controller: `[resource_plural]_controller`
- Show
  - Display one individual resource
  - Requires an `id` parameter
  - Path: `/[resource_plural]/[resource_id]`
  - Controller: `[resource_plural]_controller`
- New
  - Displays form to gather data on new resource
  - Path: `/[resource_plural]`
  - Controller: `[resource_plural]_controller`
- Edit
  - Displays form to gather data on existing resource
  - Requires an `id` parameter
  - Path: `/[resource_plural]/[resource_id]`
  - Controller: `[resource_plural]_controller`

POST
- Create
  - Responds to data submitted via `new`
  - Path: `/[resource_plural]/[resource_id]`
  - Controller: `[resource_plural]_controller`

PUT / PATCH
- Update
  - Responds to data submitted via `edit`
  - Requires an `id` parameter
  - Path: `/[resource_plural]/[resource_id]`
  - Controller: `[resource_plural]_controller`

DELETE
- Destroy
  - Destroys resource
  - Requires an `id` parameter
  - Path: `/[resource_plural]/[resource_id]`
  - Controller: `[resource_plural]_controller`

## Controller

_In RoR controllers are what immediately gets tasked to do something when a user sends an http request to a route_

```ruby
# all controllers inherit from ApplicationController
# users_controller.rb
class UsersController < ApplicationController
end

# posts_controller.rb
class PostsController < ApplicationController
end
```

Important Facts
- Name must match name in route
- Names are usually plural
- Should represent a group of related activities that should be grouped together

Naming
- plural: when aligned with model
- singular: when housing special behavior not aligned with model

### Action

_In RoR actions are the methods defined within controllers that dictate what happens when a certain route is asked for a resource_

```ruby
# all controllers inherit from ApplicationController
# users_controller.rb
class UsersController < ActionController
  def index
    # this will trigger when a get request is made
    #   on the "/users" path
  end

  def show
    # this will trigger when a get request is made
    #   on the "/users/:id" path
  end

  def update
    # this will trigger when a put request is made
    #   on the "/users/:id" path
  end

  ...
end
```

- Directly related to route
- Name must match name in route
- Rendering html within action

## Workflow
- Create route and test if route exists
- Create controller to fix controller missing problem
- Create action to fix action missing problem
- Render html using `html_safe` to bypass template missing problem

## Tips
- Read errors carefully
- Use errors to guide your workflow
- Test at every step of the way
- Go slowly

## Resourcess

- [RoR Guides: Routing From the Outside In](http://guides.rubyonrails.org/routing.html)
- [RoR Guides: Action Controller Overview](http://guides.rubyonrails.org/action_controller_overview.html)