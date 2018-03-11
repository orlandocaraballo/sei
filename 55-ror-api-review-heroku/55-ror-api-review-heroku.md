
Review of API
Review what an API is
Frontend API calls using JS

Frontend API Calls
Useful for public APIs with no key requirements
Always available in Javascript
Less secure
Exposes your API key
Faster page load
Reduces load time due to ajax call being made asynchronously

Backend API Calls
Available in any modern language + framework combo
Sometimes there are wrappers for specific APIs
Twitter
Facebook
Instagram
Useful to get around CORS limitations
Useful if you need API data in backend
More Secure
Hides your API key in Environment variable
Slower page load
Page load time is increased due to API call being made synchronously

Where?
API call can be made in models, views, controllers or custom classes
Recommended to test them out within controllers first
Steps
Choose which route
Place in action that aligns with route
Display returned data in html view

HTTParty
Simple gem used for API requests
Requests are very similar to ajax requests
Pokemon API example
HTTParty.get("https://pokeapi.co/api/v2/pokemon/1/")

Frontend AJAX + Backend API
You can create an ajax call to communicate to ask for data from Rails backend that retrieves the data from API call
Can be useful for ajax calls made from JS events such as button clicks
Example:
Click button
AJAX call to backend
API call via backend
Return JSON
Change HTML
Performance + security
API key is hidden + page does not wait for API call on load
Added complexity

Heroku in Rails
Devops review
Environments review
Development
Staging (optional)
Production
Heroku: Getting Started with Rails 5

Things to Remember
Do not deploy config.yml file
Make sure you are NOT deploying with sensitive data in your code
API Keys
Username
Passwords
Use PostgresSQL
After deploying remember to:
Run migrations
Run seed task if necessary
