require './animal'

class Lizard < Animal
  def initialize(name, height)
    super(name, height, "lizard")
  end
end

# creates a new lizard
# lizard = Lizard.new("richard", "5ft 10in")

# test our inherited getters
# puts giraffe.name 
# puts giraffe.height
# puts giraffe.species

# inherited inherited methods
# puts giraffe.walk
# puts giraffe.run

# checks to see if Lizard is a subclass of Animal
# puts lizard <= Animal # should display true