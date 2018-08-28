require './student_behavior'

# defines new class Student
class Student
  # sets the getters
  attr_reader :name, :gpa, :course 

  def initialize(name, gpa, course)
    @name = name
    @gpa = gpa
    @course = course
  end

  def name_gpa_course
    "#{ @name }:#{ @gpa }:#{ @course }"
  end

  # creates a new method called course
  #   that is an alias to program_name
  #   this is for the purpose of working with our mixin below
  alias_method :program_name, :course

  # mixes in code from StudentBehavior
  include StudentBehavior
end

# creates a new student
# student =  Student.new('anna', 4.5, 'sei')

# this code is defined in student_behavior.rb
#   and is mixed in via the module
# puts student.name_and_course