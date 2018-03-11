
Introduction
Debugging review
Exception handling review
begin
rescue
raise
ensure

How to Begin
How to read Rails errors
How to find the actual problem
Debugging steps

Common Ruby Errors
Rails is Ruby code
Errors come back down to Ruby problems
Undefined method for nil class
Unexpected keyword end
Wrong number of arguments
Undefined local variable or method [x]

Reading a Stack Trace
Reading a Stack Trace
You need to get good at finding the line in the stack trace that tells you exactly where in your code the bug occurs
Look for errors in code you have written not libraries

Common Rails Error Types
Route
Cannot find route
Restful routes
Controller
Cannot find controller
Pluralization on controllers
View
Cannot find template
Instance variable not set
Partials
Locals
Instance variables
Model
Singular name on models
Relationships tense
Singular
has_one
Plural
has_many
has_many, through

Using Debugging Tools
Pry - Rails
Byebug
Better Errors

Proper Exception Handling
Use begin, end, rescue, ensure to handle out of bounds errors
Exceptions are for exceptional circumstances
Do not hide errors
Consider logging the error using ensure
