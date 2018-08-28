require './student_behavior'

class Student
  attr_reader :name, :gpa, :course
  alias_method :program_name, :course 

  def initialize(name, gpa, course)
    @name = name
    @gpa = gpa
    @course = course
  end

  def name_gpa_course
    "#{ @name }:#{ @gpa }:#{ @course }"
  end

  include StudentBehavior
end

student =  Student.new('anna', 4.5, 'sei')
puts student.name_and_course