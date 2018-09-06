class Classmate
  def initialize(name, super_power)
    @name = name
    @super_power = super_power
  end

  def i_have_the_power!
    return "My name is #{ @name } and my super power is #{ @super_power }"
  end
end

# using this to test our class
# garth  = Classmate.new('garth', 'sleeping in class!')
# marlon = Classmate.new('marlon', 'mimicing')

# puts garth.i_have_the_power!
# puts marlon.i_have_the_power!