# defines the Animal class
class Animal
  # allows read and write access outside the class definition
  attr_accessor :name

  # allows read access outside the class definition
  attr_reader :height, :species

  # defines a constructor with name, height and species parameters
  def initialize(name, height, species)
    @name = name
    @height = height
    @species = species
  end

  # defines a walk method with no parameters
  def walk
    "I am walking very slowly"
  end

  # defines a run method with no parameters
  def run
    "I am running very quickly"
  end
end

# creates a new animal
# animal = Animal.new("marlon", "6ft 2in", "mammal")

# test out getters
# puts animal.name
# puts animal.height
# puts animal.species

# testing out methods
# puts animal.walk
# puts animal.run