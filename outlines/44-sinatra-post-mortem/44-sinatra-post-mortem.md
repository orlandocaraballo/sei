<img src="phase-3.jpg" style="width: 100%;"/>

# Sinatra -> Rails -> Phase 3

## Biggest Take a Aways

- Take things one step at a time
- Break your problems down
- Remember to slow down
- Before coding remember to:
  - Organize yourself
  - Know the problem you are trying to solve
  - Wireframe your pages out
  - Create schema diagrams
- Webpages are a lot more complex than they may seem
    - This is ok, embrace the complexity / pain (PDD)
- Don't be afraid to pivot
    - Pivoting is the process by which a developer(s) change(s) their goals, strategy or design decisions based on client / user feedback
- What are some of your take aways?

## Brand New in Rails

- Our apps will be **MUCH** larger
- Significantly more complex
- More things come preinstalled
- There are more command line tools built in
  - `rails new [app name]`
  - `rails console`
  - `rails server`
  - etc...
- Certain things are easier
  - Reloading the server happens less often
  - There are more packages generally available
  - The structure is already built out for you
  - The `rails new [app name]` command creates a basic app for you
  - Managing sessions and handling authentication is simpler

## Same but Different

- We will be relying on our knowledge of the ruby lanuguage **A LOT MORE**:
  - classes
  - inheritance
  - methods / functions
- Singular vs plural naming conventions will are much more important
  - `has_many :posts`
  - `has_one :profile`
  - `belongs_to :comment`
  - `class SessionsController < ApplicationController`
  - `class User < ActiveRecord::Base`
  - `/views/comments/edit.html.erb`
- Migrations commands come installed by default
- ActiveRecord is installed by default
- Gemfile is created for you on `rails new [app name]`
- Forms will be generated using functions such as `form_with`, `form_for`, `form_tag`
- Routing
  - This is handled in a separate file called `routes.rb`
- Model
  - Models will be in separate model files (e.g `user.rb`, `post.rb`, etc)
- View(s)
  - Views will be in separate view files (e.g. `/views/users.erb` => `/views/users/index.html`)
- Controller(s)
  - You will have many controllers to juggle instead of just an `app.rb`

## Prepare by Reading

Read through and follow the directions noted in the getting started guide noted below. Work all the way through section 4. Please have your the `rails` installed by tomorrow morning. I will be going over the basics of RoR but it helps if you have at the very least been exposed to a simple application before we begin.

[RailsGuides: Getting Started With Rails](http://guides.rubyonrails.org/getting_started.html)

## SEI: Phase 3

Phase 3 of the program will challenge you to think creatively about solutions and develop applications that solve problems. Going forward the expectation is that you are a building realistic applications to solve realistic problems. Certain elements that were de-emphasized beforehand will be more important. Please go home tonight and set a schedule for yourself until the end of the course to be successful. **If you procrastinate, you will deliver work that is subpar and you will only be doing yourself a disservice.**

### Emphasis on:

- Putting it all Together
- Useful features
- UI/UX
- Soft skills
- Completeness
- Creativity

### Soft Skills Prep

- [Linkedin Profile](https://nycda.instructure.com/courses/62/modules/items/6215)
- [Linked Summary](https://nycda.instructure.com/courses/62/modules/items/6216)
- [Portfolio](https://nycda.instructure.com/courses/62/modules/items/6217)
- [Job Tracker](https://nycda.instructure.com/courses/62/modules/items/6219)
- [Screen Recording](https://nycda.instructure.com/courses/62/modules/items/6220)

### Build As You Go: Rails Project

- [Pamela's Panel](https://nycda.instructure.com/courses/62/assignments/1058)

### Final Products
- [Startup Crunch](https://nycda.instructure.com/courses/62/assignments/1066)
- [Personal Passion Project P^3](https://nycda.instructure.com/courses/62/assignments/1059)