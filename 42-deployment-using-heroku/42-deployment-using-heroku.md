
Server Side Deployment
Introduction to Devops
Deployment review
Platforms
AWS
Engineyard
Digital Ocean
Heroku
Environments
Development
Staging  (optional)
Production
Gemfile groups
group :development do
  gem 'byebug'
end
Workflow for deploying an app
Prepare your gemfile
Verify your migrations are in order
Prepare seed data if necessary
Use Heroku CL tools
How git fits in
Professional Deployment Tools
Capistrano

Heroku
Command line
Toolbelt

Things to Remember
Set development gems in development
Use PG
Set database in controller
After deploying remember to:
Run migrations
Run seed task if necessary
Make sure you are NOT deploying with sensitive data in your code
API Keys
Username
Passwords
