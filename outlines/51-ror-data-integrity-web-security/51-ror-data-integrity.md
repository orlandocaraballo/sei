<img src="data-integrity.jpg" width="100%">

# Data Integrity

## Access Control
- `public` - available outside and within the class definition
- `protected` - available within the class definition and its children
- `private` - only available within the class definition

## Strong Parameters

_Strong parameters give us the ability to whitelist what params information is able to be recieved by our ActiveRecord models for the purpose of protecting our data_

Details
- Must state all parameters for model
- Only works on mass create and update model methods
- Prevents people from writing to any attribute on your model accidentally
- The parameters allowed are defined in a `private` method

```ruby
class PersonsController < ApplicationController
  # imagine params is set to:
  #   { person: { name: "orlando", age: 34, gender: "male", admin: true } }

  # if we try to run mass create or update methods
  #   this will give us a ForbiddenAttributesError
  #   unless you had that config line mentioned before
  #   that disables this behavior
  def create
    Person.create(params)
  end

  def update
    Person.update(params)
  end
end
```

In order to whitelist our params attributes we need to change our code to the following:

```ruby
class PersonsController < ApplicationController
  def create
    # the following method is calling on the private method
    #   person_params that accepts only the whitelisted
    #   attributes indicated by the permit method
    Person.create(person_params)
  end

  def update
    # the following method is calling on the private method
    #   person_params that accepts only the whitelisted
    #   attributes indicated by the permit method
    Person.update(person_params)
  end

  # everything after this point is only accesible by this class
  private

  # this method is being created because we are using in multiple places 
  # it only permits certain params from being mass updated
  def person_params
    # notice how admin is NOT permitted:
    #   we do NOT want to allow someone from being able 
    #   to send a request where they set their admin flag to true,
    #   that is insecure
    params.require(:person).permit(:name, :age, :gender)
  end
end
```

[RoR Guides: ActionController Overview - Strong Params](http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters)

## Validations

_A validation is code that runs before saving data to the database. It checks if the data is in a valid state. We determine what is valid based on rules we define._

### Why is it needed?

A validation protects our data from being in a state that is outside of scope for our app. For example, if you want to prevent a post from being longer than 140 characters in length, we can create a validation that checks for this.

### Types

```ruby
# pattern most validations follow
validates :[name of validation], [options]
```

#### Acceptance

Checks if a field value has been set to true

```ruby
class Person < ApplicationRecord
  validates :terms_of_service, acceptance: true, { message: "must be checked" }
end
```

#### Presence

Checks to see if a field has been set to something

```ruby
class Person < ApplicationRecord
  validates :name, :login, :email, presence: true
end
```

#### Confirmation

Checks to see if a field and its confirmation field match

```ruby
# /models/person.rb
class Person < ApplicationRecord
  validates :email, confirmation: true
end
```

```erb
# /views/persons/new.html.erb
<%= text_field :person, :email %>
<%= text_field :person, :email_confirmation %>
```

#### Inclusion

Checks to see if a field falls within a range of accepted values

```ruby
class Coffee < ApplicationRecord
  validates :size, inclusion: { 
                      in: %w(small medium large), 
                      message: "%{value} is not a valid size" }
end
```

#### Exclusion

Checks to see if a field is not within a range of invalid values

```ruby
class Account < ApplicationRecord
  validates :subdomain, exclusion: { 
                      in: %w(www us ca jp),
                      message: "%{value} is reserved." }
end
```

#### Length

Checks to see if a field conforms to a certain character length

```ruby
class Person < ApplicationRecord
  validates :name, length: { minimum: 2 }
  validates :bio, length: { maximum: 500 }
  validates :password, length: { in: 6..20 }
  validates :registration_number, length: { is: 6 }
end
```

#### Numericality 

Checks to see if a field is set to a number

```ruby
class Player < ApplicationRecord
  validates :points, numericality: true
  validates :games_played, numericality: { only_integer: true }
end
```

#### Uniqueness 

Checks to see if a field is unique

```ruby
class Account < ApplicationRecord
  validates :email, uniqueness: true
end
```

#### Custom

Allows us to create our own fields

```ruby
class Invoice < ApplicationRecord
  validate :expiration_date_cannot_be_in_the_past,
    :discount_cannot_be_greater_than_total_value
 
  def expiration_date_cannot_be_in_the_past
    if expiration_date.present? && expiration_date < Date.today
      errors.add(:expiration_date, "can't be in the past")
    end
  end
 
  def discount_cannot_be_greater_than_total_value
    if discount > total_value
      errors.add(:discount, "can't be greater than total value")
    end
  end
end
```

Callbacks
before_validation
after_validation

### Validation Errors

When there is an error on a validation, the errors object within the model instance is where can find our errors

```ruby
# /models/person.rb
class Person
  validates :age, numericality: { 
                    greater_than: 0, message: "must be greater than 0" }
end

# /controllers/persons_controller.rb
class PersonsController < ApplicationController
  def index
    @persons = Person.all

    render :index
  end
  
  def edit_age
    @person = Person.find(params[:id])

    render :edit_age
  end

  def update_age
    person = Person.find(params[:id])
    
    # let's say person age is set to -64
    # update returns true or false depending
    #   on if it passed validation or not
    if person.update(age: params[:person][:age])
      flash[:info] = "Your age has been updated"
      redirect_to action: "index"
    else
      # person.errors.messages is set to { age: ["must be greater than 0"] }
      flash[:error] = person.errors.messages.join(",")
      
      # we can also do redirect_to action: "edit"
      redirect_to :back
    end
  end
end
```

## Render vs Redirect

### Render

```ruby
render :[view name]
```

- Renders the view indicated by the parameter
- By default, actions render views that have the same name
- We can override this by using the method render :[view name]
- Instance variables defined in the action are available in the rendered view

### Redirect 

```ruby
redirect_to :[action name]
```

- Requests a new url
- Used to reroute the user to a brand new page
- Instance variables defined in the original action are NOT available after redirecting

## Resources

- [RoR Guides: Validations - Errors](http://guides.rubyonrails.org/active_record_validations.html#working-with-validation-errors)
- [RoR Guides: Validations](http://guides.rubyonrails.org/active_record_validations.html)
