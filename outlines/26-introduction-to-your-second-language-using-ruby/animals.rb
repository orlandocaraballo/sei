class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def talk
    "woof"
  end
end

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def talk
    "meow"
  end
end

class Zoo
  def initialize
    @animals = []
  end

  def add_animal(animal)
    @animals.push(animal)
  end

  def each_animal
    @animals.each do |animal|
      yield(animal)
    end
  end
end

dog = Dog.new("fido")
cat = Cat.new("kitty")

zoo = Zoo.new
zoo.add_animal(dog)
zoo.add_animal(cat)

zoo.each_animal do |animal|
  puts animal.name
end