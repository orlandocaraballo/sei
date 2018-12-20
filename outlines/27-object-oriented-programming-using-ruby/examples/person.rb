class Person
  # this is the same as defining a getter
  #   and setter method for @name and @age
  attr_accessor :name, :age

  # this is the contructor
  def initialize(name, age)
    @name = name
    @age = age
  end

  # this is the getter @name
  def name()
    return @name
  end

  # this is the getter for @age
  def age()
    return @age
  end

  # this uses the getter methods
  #   for @age and @name to return those values
  #   within the a string
  def name_and_age()
    "The name is #{ name() }, the age is #{ age() }"
  end
end

# Student inherits from Person
class Student < Person
  attr_reader :gpa

  def initialize(name, age, gpa)
    super(name, age)
    @gpa = gpa
  end

  def name_age_gpa
    "Name -> #{ @name }, Age -> #{ @age }, GPA -> #{ @gpa }"
  end
end

# new_person = Person.new("orlando", 35)
# new_person.name = "trisha"
# new_person.age = 9001
# puts new_person.name_and_age
# puts new_person.name, new_person.age

new_student = Student.new("denisse", 24, 3.1)
puts new_student.name_age_gpa