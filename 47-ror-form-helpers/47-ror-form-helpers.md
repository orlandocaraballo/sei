
Introduction
Forms review
Input
Submission
Method attribute (http verb)
Action attribute
Params

Forms in Rails 
Basic HTML forms
View helpers
Model based
Non-model based

View Helpers
Used to DRY up code
Helpers = Ruby methods defined within your Rails application or by an outside library
Example
parses_number_into_currency(number) - takes a number and returns a string with correct decimals and a currency marker

Model Based Forms 
Rails allows easy model-based form creation
Special methods generate all the HTML
Code example and syntax breakdown 
DO NOT PLACE DATABASE CALLS IN VIEWS
Even if its in a tutorial
Breaks separation of concerns structure
It makes it much harder to track down problems

Processing Form Data
Uses POST method by default
Infers action (submission URL) by the model supplied
Model is new
Method: POST
Controller: [resource_plural]
Action: create
Path: /[resource_plural]
Model exists
Method: PUT / PATCH
Controller: [resource_plural]
Action: update
Path: /[resource_plural]/[resource_id]
Parameters Hash
Stores data submitted from referrer
Works for forms and url parameters
Similar to Sinatra
params[:id]

Non-Model Forms 
Used to:
Generate forms that are not based on a particular model
Prevent against a CSRF attack
Each form generated includes a unique token to prevent this type of attack

form_with
Can be used for model and non-model forms
Replaces form_for or form_tag
Available in Rails 5.1
Syntax

Nested forms
Necessary when dealing with nested routes
Will also nest your params
Comments nested within posts
params[:posts][45][:comments][9]

Tips
Check the html of the page with a form
Double check params grouping
Double check for hidden fields
Take it slow
Practice using different types of forms
