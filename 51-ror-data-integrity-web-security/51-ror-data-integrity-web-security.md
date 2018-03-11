
Introduction
Database Review
Brief models review
Brief controllers review

Access Control
public
protected
private

Strong Parameters
Must state all parameters for model
Only works on mass update model methods
.create
.update
Prevents people from writing to any attribute on your model accidentally
The parameters allowed are defined in a private method

Validations
What is a validation?
Why is it needed?
Types
Presence
Acceptance 
Confirmation 
Inclusion
Exclusion
Length
Numericality 
Uniqueness 
Custom
Callbacks
before_validation
after_validation

Validation Errors
Model errors object
Handling errors in controller
render :[template]
Requests a new url
Used to reroute the user to a brand new page
Instance variables defined in the original action are NOT available after redirecting
redirect _to :[action_name]
Renders the view indicated by the parameter
By default, actions render views that have the same name
We can override this by using the method render :view_name
Instance variables defined in the action are available in the rendered view
Parsing errors object
Displaying errors in views

Use Correct Data Types
Long strings should be stored at text
Use decimal data type for money
.number_to_currency helper converts decimals into money
Store dates as a date type

Common Web Attacks
Security is a moving target
CSRF
XSS
DDoS
Passwords
Choosing good passwords
Two Step Authentication
Brute force
Dictionary Attacks
Lookup Tables
Reverse Lookup Tables
Salt + Hash
Phishing
Social Engineering
SQL Injection
CAPTCHA

Environment Variables
Store sensitive information in Environment Variables such as:
API Keys
Username / password credentials
