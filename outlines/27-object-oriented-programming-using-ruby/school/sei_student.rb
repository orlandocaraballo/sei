# makes student class available in this file
require './student'

# defines SeiStudent class that inherits from Student
class SeiStudent < Student
  def initialize(name, gpa, hours_slept)
    super(name, gpa, 'sei')

    @topics = [
      "design", 
      "frontend programming", 
      "backend programming"
    ]

    @hours_slept = hours_slept
  end

  def minutes_slept
    @hours_slept * 60
  end
end

# sei_student =  SeiStudent.new('anna', 5.0, 4)
# puts sei_student.minutes_slept

# this code is inherited from student.rb
# puts sei_student.name_gpa_course

# the following code is defined in student_behavior.rb
#   this code is available here because student.rb also
#   requires the student_behavior.rb file
# puts sei_student.name_and_course