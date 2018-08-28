require './animal'

class Giraffe < Animal
  def initialize(name, height)
    super(name, height, "giraffe")
  end
end

puts Giraffe.new("rey", "10ft 2in").inspect