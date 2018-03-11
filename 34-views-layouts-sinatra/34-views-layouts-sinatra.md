
Views
Introduction
MVC Review (for context)
What is a view?
What is a template?
ERB
views directory
Templates must have .erb extension
Template names must be the same as the erb call in controller
Running Ruby code within ERB
<% name = orlando %> vs
<%= 1 + 1 %>
Example
views/home
home.erb
Erb = :home

Layouts
What is a layout?
Name must be layout.erb
Must be within views folder
yield
What is yield?
Why is it important?
Where do you place yield?
content_for (optional)

The public folder
Overview of what the public folder contains in a project
Used to serve assets that don't need to be compiled: 
Images
CSS
JS
Can also create subfolders
images/image.jpg
stylesheets/main.css
javascripts/main.js

Forms Review
How forms work in web frameworks
Params hash
Display form
get "/form"
Respond to form submittal
post "/form-response"
Form code example
Query Strings
A query string is data sent in the URL using the following syntax: http://someurl.com?queryvariablename=queryvariablevalue
To add more query variables to the query string, we can use the & operator: http://someurl.com?queryvariablename=queryvariablevalue&other=value
Google Maps uses query strings to allow you to easily link to a search, try clicking the below https://www.google.com/maps?q=the+new+york+code+design+academy+new+york+new+york
Messaging the user
Flash messages
