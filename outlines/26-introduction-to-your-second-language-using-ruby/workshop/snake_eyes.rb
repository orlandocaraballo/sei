# snake eyes = rolling two die and each die is a 1
# roll two die 100 times and check how many times
#   we roll the number 1 twice per loop
def roll_snake_eyes
  counter = 0

  # loop 100 times
  100.times do |i|
    # roll the die two times
    first_roll = rand(1..6) # random number between 1-6
    second_roll = rand(1..6) # random number between 1-6

    # display what the rolls are for testing
    puts "First roll -> #{ first_roll }, second roll -> #{ second_roll }"

    # check how many times the number 1 is rolled twice
    if first_roll == 1 && second_roll == 1
      # add 1 to the count
      counter += 1
    end
  end

  # return the count
  counter
end

# display the amount of times we rolled snake eyes
puts roll_snake_eyes