require './student'

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
# puts sei_student.name_gpa_course
# puts sei_student.minutes_slept
# puts sei_student.name_and_course