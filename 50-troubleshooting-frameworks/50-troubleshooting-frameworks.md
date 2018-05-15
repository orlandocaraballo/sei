<img src="troubleshooting.png" width="100%">

# Troubleshooting Frameworks

_Oftentimes, when writing code in a framework we find ourselves expriencing similar errors over and over again. The following is a listing of some common debugging and problem solving techniques that may be useful to you when working frameworks._

**Note:** Many of these errors are referring to Ruby on Rails but similar techniques may be utilized in Sinatra, Express, Flask or any other web framework by translating the techniques to the appropriate language or framework.

## Debugging and Problem Solving Review

- [Problem Solving](../30-problem-solving-algorithms-ruby/30-problem-solving-algorithms-ruby.md)
- [Debugging](../31-debugging-in-ruby/31-debugging-in-ruby.md)

## How to Begin

Much like it states in [my alchemic problem solving process](../09-problem-solving-algorithms-js/09-problem-solving-algorithms-js.md#orlandos-alchemic-problem-solving-process) we have to follow the steps.

1. **Reduce**
2. **Understand**
3. **Create**

## Finding the Actual Problem

- Identify what the problem is by error message
  - what line is this on?
  - is this a problem with my:
    - model
    - view
    - controller
    - route
    - database schema
    - gem
    - etc...
- Identify if Rails have provided a solution
  - e.g. looking for controller `UsersController` but not found
- Do I have some clues on how to proceed?
- Does this look like a similar error I have seen in the past?
- Do I know how to proceed from here
- Do I know what I am doing? (review how to work with RoR)

## Remember Your Tools

Use your tools for more info
- [`pry-rails`](https://github.com/rweng/pry-rails)
- [`byebug`](https://github.com/deivid-rodriguez/byebug)
- [`better_errors`](https://github.com/charliesome/better_errors)
- stacktraces / exceptions
- `rails console`
- commenting out code
- server log

## Common Ruby Errors

Remember that rails is ruby code, many rails errors come back down to ruby errors:
- Undefined method for `nil` class
  - **Translation:** You have attempted to call a method on an object that is `nil`
- Unexpected keyword `end`
  - **Translation:** You have an extra `end` somewhere that does not correspond to any `def`, `begin`, `class` or `do` block
- Wrong number of arguments
  - **Translation:** You have are passing into a method / function less or more arguments than it is expecting
- Undefined local variable or method [x]
  - **Translation:** You are attempting to use a variable that has not been set to a value

## Reading a Stack Trace
- Start from the bottom (now we're here)
- Work your way up
- Stop when you find your offending code

**Note:** Chances are that if your code worked a minute ago and something you did caused an error the error is in your code.

## Common Rails Error Types

### Route
- **Cannot find route** - verify path on route is correct
- **Restful routes** - verify controller and action names correstpond to restful style

### Controller
- **Cannot find controller** - verify controller name matches route
- **Pluralization on controllers** - verify controller name is plural if using RESTful style or verify name is correct on route

### View
- **Cannot find template** - verify folder and file name of view
- **Instance variable not set** - verify instance variables are defined

### Partials
- **Locals** - verify locals are being passed in
- **Instance variables** - verify instance variables are defined

### Model
- **Singular name on models**
- **Relationships tense** - verify model name sinfular
- **Singular**
  - `has_one :[model name]` - verify model name is singular
- **Plural**
  - `has_many :[plural model name]` - verify plural
  - `has_many :[plural model name], through: :[plural join model]`
      - verify model name is plural
      - verify join model is plural

## Remember Exception Handling
When coding functions or classes you create it may be beneficial to capture exceptions and do something simple with it

- Use `begin`, `end`, `rescue`, `ensure` to handle out of bounds errors
- Exceptions are for exceptional circumstances
- Do not hide errors
- Consider logging the error using ensure
- Use an error reporting API for production
  - We will be using [Sentry Raven](https://github.com/getsentry/raven-ruby)

## Practice

Try adding Sentry Raven to your project to see how it errors are reported on your app
