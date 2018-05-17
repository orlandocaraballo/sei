<img src="authentication.jpg" width="100%">

# Authentication

_Authentication is the process by which a user is verified to have access to the system_

**Definitions:**
- **Cookies:** a file that lives on your pc that stores information
- **Session:** a limited time of communication between two systems

[Sinatra Sessions](../40-sinatra-review-activerecord-authentication/40-authentication.md)

## Gem Similarities and Differences

- All authentication uses sessions / cookies
- **Sign up**
  - Requires a form
  - Hide when signed in
- **Sign in**
  - Requires a form
  - Hide when signed in
- **Sign out**
  - Can be done with a link
  - Hide when signed out
  - Requires `DELETE` http method
- Hash + Salt
- Routes
- Views
- Migrations
  - We need to add a new users table or new columns to users table
- Overriding default behavior

## Using plain sessions - The Hard Way

Advantages
- No gems are required
- Gives you full control

Disadvantages
- Not recommended for beginners
- Can potentially not be secure
- Requires coding everything yourself

[Github: Bcrypt Ruby](https://github.com/codahale/bcrypt-ruby#bcrypt-ruby)

## has_secure_password

Advantages
- Easy to setup
- Simple to understand
- Built into RoR
- Gives you the most freedom

Disadvantages
- Limited featureset
- Does not provide routes, model methods and controller filters

[Ruby on Rails API: has_secure_password](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password)

## Clearance

Advantages
- Good common featureset
- Good middle ground between `has_secure_password` and `Devise`
- Simple to customize
- Creates routes, model methods and controller filters for you to use
- Sensible default behavior
- Easy to understand codebase

Disadvantages
- Less features than Devise

[Github: Clearance](https://github.com/thoughtbot/clearance)

## Devise

Advantages
- Excellent default behavior
- Powerful featureset
- Very good integration with OAuth, Facebook, Twitter Apis etc
- Widely used
- Well maintained

Disadvantages
- Difficult to customize

[Github: Devise](https://github.com/plataformatec/devise)
