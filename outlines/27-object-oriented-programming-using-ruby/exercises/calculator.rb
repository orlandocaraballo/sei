# defines a new calculator class
class Calculator
  # sets the class method sum
  def self.add(arg1, arg2)
    arg1 + arg2
  end

  # sets the class method difference
  def self.subtract(arg1, arg2)
    arg1 - arg2
  end

  # sets the class method product
  def self.multiply(arg1, arg2)
    arg1 * arg2
  end

  # sets the class method quotient
  def self.divide(arg1, arg2)
    arg1 / arg2
  end
end

# test our Calculator class methods
puts Calculator.add(1, 2) # 3
puts Calculator.subtract(5, 4) # 1
puts Calculator.multiply(3, 2) # 6
puts Calculator.divide(10, 2) # 5