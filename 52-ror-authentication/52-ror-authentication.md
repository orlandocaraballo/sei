
Introduction
Authentication review
Sessions
Cookies
Sign up
Sign in
Sign out

Gem Similarities and Differences
All authentication uses sessions / cookies
Sign up
Requires a form
Hide when signed in
Sign in
Requires a form
Hide when signed in
Sign out
Can be done with a link
Hide when signed out
Requires DELETE method
Hash + Salt
Routes
Views
Migrations
Overriding default behavior

The Hard Way
Using sessions
Not recommended for beginners
Can potentially not be secure
Requires coding everything yourself

has_secure_password
Advantages
Easy to setup
Simple to understand
Built into RoR
Disadvantages
Limited featureset
Does not provide routes, model methods and controller filters

Clearance
Advantages
Good common featureset
Good middle ground between has_secure_password and Devise
Simple to customize
Creates routes, model methods and controller filters for you to use
Sensible default behavior
Easy to understand codebase
Disadvantages
Less features than Devise

Devise
Advantages
Excellent default behavior
Powerful featureset
Very good integration with OAuth
Widely used
Disadvantages
Difficult to customize

Demos
Examples
has_secure_password
Clearance
Devise
