class Classmate
  attr_reader :name, :super_power

  def initialize(name, super_power)
    @name, @super_power = name, super_power 
  end

  def i_have_the_power!
    "My name is #{ @name } and my super power is #{ @super_power }"
  end
end