<img src="troubleshooting.png" width="100%">

# Troubleshooting Frameworks

## Debugging and Problem Solving Review

- [Problem Solving](../30-problem-solving-algorithms-ruby/30-problem-solving-algorithms-ruby.md)
- [Debugging](31-debugging-in-ruby/31-debugging-in-ruby.md)

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
- Unexpected keyword `end`
- Wrong number of arguments
- Undefined local variable or method [x]

## Reading a Stack Trace
- Start from the bottom (now we're here)
- Work your way up
- Stop when you find your offending code

**Note:** Chances are that if your code worked a minute ago and something you did caused an error the error is in your code.

## Common Rails Error Types

Route
- Cannot find route
- Restful routes

Controller
- Cannot find controller
- Pluralization on controllers

View
- Cannot find template
- Instance variable not set

Partials
- Locals
- Instance variables

Model
- Singular name on models
- Relationships tense
- Singular
  - `has_one`
- Plural
  - `has_many`
  - `has_many, through: :[model name]`

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
