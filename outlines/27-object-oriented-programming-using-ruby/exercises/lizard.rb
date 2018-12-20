require "./animal"

class Lizard < Animal
  def initialize(height, name)
    super(height, "lizard", name)
  end
end

new_lizard = Lizard.new(10, "1231", "larry")
puts new_lizard.walk
puts new_lizard.run