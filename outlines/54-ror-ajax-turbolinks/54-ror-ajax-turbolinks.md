
Introduction
Javascript Review
JSON Review
AJAX Review
Axios Review

Assets in Rails
Asset pipeline loads all assets on all pages
Be aware of name collision
Design JS code to run only when a specific class / id is found on the page

Executing Ajax 
Direct AJAX calls using Axios / Fetch / jQuery
Rails UJS

Axios
Is more transferable across platforms
CSRF token is not automatically added
Using Axios in Ruby on Rails 5.1+
Use the CDN not the npm package
Remember to set CSRF token header

Rails UJS
Enabled by default in Rails
Specific to Rails
Reduces the amount of JS code that needs to be written
Can be cumbersome to work with

Use Cases
Submitting a form without reloading the page
Loading up potentially slow loading database queries on demand
Note: Disable submit boxes on click and reenable on return

Returning JSON
Simple JSON
respond_to :json
respond_with @[object]
respond_to do |format|
  format.json { render :json, @[object].to_json }
end
More complex JSON
JBuilder

Alternatives
Fetch
jQuery

Turbolinks
What is it?
What does it do?
Caveats
May cache css / js code
How to turn it off / start project with it off
