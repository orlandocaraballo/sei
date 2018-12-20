class Animal
  attr_reader :height, :species
  attr_accessor :name

  def initialize(height, species, name)
    @height = height
    @species = species
    @name = name
  end

  def walk
    "I am walking very slowly"
  end

  def run
    "I am running very quickly"
  end
end

# curious_george = Animal.new(5, "monkey", "george")
# puts curious_george.name
# puts curious_george.species
# puts curious_george.height
# puts curious_george.walk
# puts curious_george.run