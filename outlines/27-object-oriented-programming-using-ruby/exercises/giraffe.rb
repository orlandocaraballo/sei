require "./animal"

class Giraffe < Animal
  def initialize(height, name)
    super(height, "giraffe", name)
  end
end

new_giraffe = Giraffe.new(10, "joffrey")
puts new_giraffe.walk
puts new_giraffe.run