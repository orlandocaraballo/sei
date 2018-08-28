require './animal'

# inherits from Animal
class Giraffe < Animal
  def initialize(name, height)
    super(name, height, "giraffe")
  end
end

# creates a new giraffe
# giraffe = Giraffe.new("rey", "10ft 2in")

# test our inherited getters
# puts giraffe.name 
# puts giraffe.height
# puts giraffe.species

# inherited inherited methods
# puts giraffe.walk
# puts giraffe.run