class Student
  attr_reader :name, :gpa, :course

  def initialize(name, gpa, course)
    @name = name
    @gpa = gpa
    @course = course
  end

  def name_gpa_course
    "The name is #{ @name }, the gpa is #{ @gpa }, the course #{ @course }"
  end
end

class SeiStudent < Student
  attr_reader :topics

  def initialize(name, gpa, hours_slept)
    super(name, gpa, "sei")

    @hours_slept = hours_slept

    @topics = [
      "design",
      "frontend programming",
      "backend programming"
    ]
  end

  def minutes_slept
    @hours_slept * 60
  end
end

new_student = Student.new("ryan", 4.0, "advanced mathematics")
p new_student

new_sei_student = SeiStudent.new("warren", 5.0, 4)
p new_sei_student
puts new_sei_student.minutes_slept