# defines a new calculator class
class Calculator
  # sets the class method sum
  def self.sum(arg1, arg2)
    arg1 + arg2
  end

  # sets the class method difference
  def self.difference(arg1, arg2)
    arg1 - arg2
  end

  # sets the class method product
  def self.product(arg1, arg2)
    arg1 * arg2
  end

  # sets the class method quotient
  def self.quotient(arg1, arg2)
    raise ArgumentError.new("arg2 cannot be 0") if arg2 == 0

    arg1 / arg2
  end
end

# test our Calculator class methods
# puts Calculator.sum(1, 2) # 3
# puts Calculator.difference(5, 4) # 1
# puts Calculator.product(3, 2) # 6
# puts Calculator.quotient(10, 2) # 5