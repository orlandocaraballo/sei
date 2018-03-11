
Scaffolded Approach to Ruby on Rails
Simulation of the of learning and building a project simultaneously - similar to in the workplace
Project will be done these next two weeks
Pieces of the project will be filled in as its learned
Short exercises will be used while going along

Introduction
Routing review
Controller review

Getting Started
gem install rails --no-rdoc --no-ri
http://localhost:3000

Commands
rails new [app_name]
rails console
rails routes
rails generate controller

Routing
routes.rb
Simple routes
get "/users", to: "users#index"
Restful routing
RepresEntational State Transfer
A standard used across platforms
Different HTTP verbs are used on the same URL (resource) by the user to represent the requested state of that resource
resources :[resource_name]
Generates many routes in one line

REST Verb Standards
GET
All require individual views
All display information
Index
Displays all resources
Path: /[resource_plural]
Controller: [resource_plural]_controller
Show
Display one individual resource
Requires an id parameter
Path: /[resource_plural]/[resource_id]
Controller: [resource_plural]_controller
New
Displays form to gather data on new resource
Path: /[resource_plural]
Controller: [resource_plural]_controller
Edit
Displays form to gather data on existing resource
Requires an id parameter
Path: /[resource_plural]/[resource_id]
Controller: [resource_plural]_controller
POST
Create
Responds to data submitted via New
Path: /[resource_plural]/[resource_id]
Controller: [resource_plural]_controller
PUT / PATCH
Update
Responds to data submitted via Edit
Requires an id parameter
Path: /[resource_plural]/[resource_id]
Controller: [resource_plural]_controller
DELETE
Destroy
Destroys resource
Requires an id parameter
Path: /[resource_plural]/[resource_id]
Controller: [resource_plural]_controller
Related to action names

Controller
Name must match name in route
Naming
Plural
When aligned with model
Singular
When housing special behavior not aligned with model

Action
Directly related to route
Name must match name in route
Rendering html within action

Filters
Used to DRY up code
Can create confusion due to hidden behavior
Use with caution

Workflow
Create route and test if route exists
Create controller to fix controller missing problem
Create action to fix action missing problem
Render html using html_safe to bypass template missing problem

Tips
Read errors carefully
Use errors to guide your workflow
Test at every step of the way
Go slowly
