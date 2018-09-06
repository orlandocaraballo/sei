# module ActiveRecord
#   class Model
#     def find(id)
#       # this finds a record by id
#       # this also works by name
#     end
#   end
# end

class Student
  attr_reader :name, :course

  def initialize(name, course)
    @name = name
    @course = course
  end
end

# student = Student.new('pablo', 'sei')
# student.post.content

# class Post
#   def initialize(content)
#     @content = content
#   end
# end