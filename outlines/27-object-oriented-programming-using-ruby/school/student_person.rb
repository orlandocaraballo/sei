# makes Person class and StudentBehavor module available in this file
require './person'
require './student_behavior'

# defines a new class StudentPerson that inherits from Person
class StudentPerson < Person
  attr_reader :program_name

  # redefines the constructor for StudentPerson to utilize
  #   three params
  def initialize(name, gender, program_name)
    @program_name = program_name

    # calls the constructor of the Person class
    super(name, gender)
  end

  # mixes in code from StudentBehavior
  include StudentBehavior
end

# studentA = StudentPerson.new("janice", "female", "sei")
# studentB = StudentPerson.new("marlon", "male", "ux/di")

# test our getters
# puts studentA.name
# puts studentA.gender
# puts studentA.program_name
# puts studentA.fancy_born_time

# puts studentB.name
# puts studentB.gender
# puts studentB.program_name
# puts studentB.fancy_born_time

# this code is defined in student_behavior.rb
#   and is mixed in via the module
# puts studentA.name_and_course
# puts studentB.name_and_course


