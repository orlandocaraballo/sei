module WalkingBehavior
  def walk
    "I can walk"
  end
end

class Human
  def talk
    "bruh"
  end

  include WalkingBehavior
end

class Dog
  def bark
    "woof"
  end

  include WalkingBehavior
end

puts Human.new.walk
puts Dog.new.walk