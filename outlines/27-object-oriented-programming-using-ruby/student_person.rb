require './person'
require './student_behavior'

class StudentPerson < Person
  attr_reader :program_name

  def initialize(name, gender, program_name)
    @program_name = program_name

    super(name, gender)
  end

  include StudentBehavior
end

studentA = StudentPerson.new("janice", "female", "sei")
# studentB = StudentPerson.new("marlon", "male", "ux/di")

# puts studentA.name
# puts studentA.gender
# puts studentA.program_name
# puts studentA.fancy_born_time
puts studentA.name_and_course

# puts studentB.program_name

