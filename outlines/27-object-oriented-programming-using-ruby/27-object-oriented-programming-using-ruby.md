![Ruby](ruby.png)

# Object Oriented Programming using Ruby

## Mostly Everything in Ruby is an Object

```ruby
1.class # Fixnum
"    hello    ".strip  # hello
1.+(2) # 3
1 + 2 # 3
```

## Classes and Objects

```ruby
class Person
end

new_person = Person.new # creates a new object of type Person
```

## Constructors

_Ruby constructor methods are named `initialize`_

```ruby
class Person
  def initialize
    puts "I have initialized this class"
  end
end

# displays "I have initialized this class" to the console
new_person = Person.new
```

## Constructors with Arguments

```ruby
class Person
  def initialize(name, age, gender)
    puts "Hi my name is #{name}, my age is #{age} and my gender is #{gender}"
  end
end

# displays:
#   "Hi my name is Orlando, my age is 34 and my gender is male"
new_person = Person.new("orlando", 34, "male")
```

## Instance Variables

_The `@` keyword before a variable name within a class indicates that it is an instance variable_

```ruby
class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

# however instance variables are `private` in Ruby
new_person = Person.new("orlando", 34, "male")
new_person.name # undefined method `name' for #<Person:0x0000562476178748>
```

## Instance Methods

```ruby
class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def name_and_age
    "Hi my name is #{@name} and my age is #{age}"
  end
end

new_person = Person.new("orlando", 34, "male")
new_person.name_and_age # "Hi my name is orlando and my age is 34"
```

## Class Methods

```ruby
class Maf
  def self.pi
    3.14
  end
end

Maf.pi # 3.14
```

## Methods to Read Instance Variables
```ruby
class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  # allows us to gain read access to the @name variable
  #   outside of the definition of the class
  def name 
    @name
  end

  # same goes for age and gender
  def age 
    @age
  end

  def gender 
    @gender
  end
end

new_person = Person.new("orlando", 34, "male")
new_person.name # "orlando"
new_person.age # 34
new_person.gender # "male"
```

## Attribute Reader

```ruby
class Person
  # attribute reader is a shorthand that allows you to read instance
  #   variables outside of the class definition
  attr_reader :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

new_person = Person.new("orlando", 34, "male")
new_person.name # "orlando"
new_person.age # 34
new_person.gender # "male"

# changing the instance variable is not possible by default
new_person.name = "denisse" # undefined method `name=' for #<Person:0x00005555bf899148>
```
## Methods to Write to Instance Variables

```ruby
class Person
  attr_reader :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  # allows us to gain write access to the @name variable
  #   outside of the definition of the class
  def name=
    @name
  end

  # same goes for age and gender
  def age=
    @age
  end

  def gender=
    @gender
  end
end

new_person = Person.new("orlando", 34, "male")

# now these methods will work
new_person.name = "denisse"
new_person.age = 23
new_person.gender = "female"

p new_person # #<Person:0x000055f36f9843c0 @name="denisse", @age=34, @gender="female">
```

## Attribute Writer

```ruby
class Person
  attr_reader :name, :age, :gender

  # attribute writer is shorthand that allows you to has write
  #   access to an instance variable outside the class definition
  attr_writer :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

new_person = Person.new("orlando", 34, "male")

# now these methods will work
new_person.name = "denisse"
new_person.age = 23
new_person.gender = "female"

p new_person # #<Person:0x000055f36f9843c0 @name="denisse", @age=34, @gender="female">
```

## Attribute Accessor

```ruby
class Person
  # attribute accessor is shorthand that allows you to have read and write
  #   access to an instance variable outside the class definition
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

new_person = Person.new("orlando", 34, "male")

# now these methods will work
new_person.name = "denisse"
new_person.age = 23
new_person.gender = "female"

p new_person # #<Person:0x000055f36f9843c0 @name="denisse", @age=34, @gender="female">
```

## Inheritance

```ruby
class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def name_and_gender
    "Hi my name is #{@name} and my gender is #{@gender}"
  end
end

class Student < Person
  def gpa
    4.0
  end
end

student = Student.new("denisse", 34, "female")
student.name_and_gender # "Hi my name is denisse and my gender is female"
student.gpa # 4.0
```

## Exercises

- Create an `Animal` class that stores information on an animal's `height`, `species` and `name`. The `name`, `species` and `height` are readable outside of the class definition. Only `name` is changeable outside of the class definition.
    - Add two instance methods called `walk` and `run`. The walk method returns `"I am walking very slowly"` and the run method returns `"I am running very quickly"`.

- Create a Calculator class with 4 class methods: `add`, `subtract`, `multiply` and `divide`. Each method accepts two parameters and returns the result of the operation.

- Create `Giraffe` and `Lizard` classes both of which inherit from `Animal`. Make sure each giraffe and lizard instance have their species set accordingly.
    - Can giraffe and lizards also run and walk?

- Create a `Student` and `SeiStudent` class. Each `Student` should have the ability to store their `name`, `gpa` and `course`. Each `SeiStudent` stores the same information as `Student`, their `course` is permanently set to `"sei"` but also stores a list of topics: `"design"`, `"frontend programming"` and `"backend programming"`. Both should allow for retrieval of all information but none of it can be changed once initialized. 
  - Add a method to both that returns a message displaying their `name`, `gpa` and `course` in words.
  - Allow for an `SeiStudent` to store their `hours_slept` and then create behavior that displays how many minutes they have slept based on their hours.


## Resources

[Ruby 101: Object Oriented Programming part 1](https://medium.com/the-renaissance-developer/ruby-101-object-oriented-programming-part-1-af734f87f481)

[Ruby 101: Object Oriented Programming part 2](https://medium.com/the-renaissance-developer/ruby-101-object-oriented-programming-part-2-80b3eca2a318)

## Workshop

[Emote Class](https://drive.google.com/open?id=11mKnz3Fyewk109ovCHIauMWSSMfzuqXiQTojNJlOWNE)

