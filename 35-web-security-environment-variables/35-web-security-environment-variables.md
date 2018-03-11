
Bash Profile 
Brief Definition/overview 
Why it's important to create a bash profile
Hidden files
~/.bash_profile
How do you access the bash profile
Where it should be placed in a project directory?
What goes inside a bash profile
Custom prompt settings to make your prompt look exactly how you'd like it to
"Environmental variables", special variables accessible to all command line programs you run.
A great way to protect sensitive information like API keys.
Lines to add directories to your $PATH - meaning to give Bash additional directories to scan for command line programs to include on startup of the command line, such as cat and git
Sourcing
Overview of sourcing and its purpose
Simply open a new terminal window, which will automatically source your ~/.bash_profile

Environmental Variables 
Overview and definition of EV
Emphasize: Even putting your credentials up on GitHub once can comprise them, even if you "wipe them" from Git
Adding Environment Variables to Bash Profile 
To set an environment variable in your bash profile:
export VAR_NAME=var_value
make sure you source your bash profile once you've added the variable!
To be sure the variable "stuck", echo it out in the terminal:
echo $VAR_NAME
In Ruby 
ENV hash
This hash contains all of the environment variables in the system in key value pairs
For instance, to access the variable VAR_NAME in a Ruby program, use:
ENV['VAR_NAME']

APIs
Review of an API
Simple API calls using HTTParty
HTTParty.get
Gems as API Wrappers

SendGrid Gem 
Overview of the functionality of the gem
Demo of how to add it to a gemfile
Registering For SendGrid
Register for a free account at sendgrid.com
Wait for your account to be verified and provisioned
Inside of your account dashboard, under 'Settings,' obtain an API key and stash it somewhere safe, like a new TextEdit document or in Sublime Text
Using the API Key
Demo of how to set up an environmental variable called: SENDGRID_API_KEY
Code example
Sending an Email
Code and syntax breakdown-from SendGrid Gem GitHub Page
*Note: In terminal you should get `202` to let you know it worked!*
