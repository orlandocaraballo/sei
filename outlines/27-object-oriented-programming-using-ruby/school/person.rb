require './calculator'

class Person
  # this code is equivalent to:
  #   attr_reader :name, :gender
  #   attr_writer :name, :gender
  attr_accessor :name, :gender

  def initialize(name, gender)
    @name = name
    @gender = gender
    @born_time = Time.now
  end

  def name_and_gender
    "#{ @name } : #{ @gender }"
  end

  def fancy_born_time
    @born_time.strftime("%I:%M:%S %p")
  end

  def time_travel(seconds)
    @born_time = Calculator.sum(@born_time, seconds)
  end

  # THE FOLLOWING CODE CAN DEFINED AS attr_accessor :name
  
  # same as attr_reader :name
  # def name
  #   @name
  # end

  # same as attr_writer :name
  # def name=(name_argument)
  #   @name = name_argument
  # end

  # EVERYTHING BELOW CAN DEFINED AS attr_accessor :gender
  
  # same as attr_writer :gender
  # def gender=(gender_argument)
  #   @gender = gender_argument
  # end

  # same as attr_reader :gender
  # def gender
  #   @gender
  # end
end

# calculator = Calculator.new
# puts calculator.sum(10, 20)
# puts calculator.difference(10, 20)
# puts calculator.product(10, 20)
# puts calculator.quotient(20, 10)

# puts Calculator.sum(10, 20)
# puts Calculator.difference(10, 20)
# puts Calculator.product(10, 20)
# puts Calculator.quotient(20, 10)

# puts 

# personA = Person.new("orlando", "male")
# puts personA.fancy_born_time
# personA.time_travel(100)
# puts personA.fancy_born_time

# sleep 2

# personB = Person.new("rodrigo", "male")
# person.gender=("female")
# person.name=("pablo")

# puts personA.name_and_gender
# puts personB.name_and_gender
# puts personA.fancy_born_time
# puts personB.fancy_born_time

# person.gender=("male")

# puts person.inspect