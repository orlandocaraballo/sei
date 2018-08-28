require './animal'

class Lizard < Animal
  def initialize(name, height)
    super(name, height, "lizard")
  end
end

puts Lizard.new("richard", "5ft 10in").inspect
puts Lizard <= Animal