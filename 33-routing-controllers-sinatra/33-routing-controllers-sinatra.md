
Design Patterns
Introduction
Design Patterns
What is a design pattern?
Why is it used?
Give an example of patterns in code that led to structured patterns
Managing tons of code with not a lot of reference points
MVC
What is MVC?
Examples of MVC
Code Igniter
Sinatra
Ruby on Rails
etc...

Sinatra 
Homepage
Brief Definition/overview of the framework
Is a Domain Specific Language
Used for quickly declaring webpage routes
Your first Sinatra Application
Controller
.rb extension
get "/"
"Hello World"
Create a main ruby file with the extension .rb
Running a server
ruby app.rb
Anatomy of a url
http://localhost:4567 

Controller Methods
Types of methods used in Sinatra
GET
POST (More on this the following day)
Used alongside an input action
Requires a display and response routes
DELETE (Requires Rack::MethodOverride)
PUT / PATCH (Requires Rack::MethodOverride)


Dynamic Routes
What is it?
Why do we use them?
Anatomy of a dynamic route
get "/users/:id"
params[:id]
Examples


