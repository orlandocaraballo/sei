# checks to see if number is divisible by divider
def divisible?(number, divider)
  # if number is divisible by divider
  #   then the remainder will be 0 therefore
  #   this will be true when divisible
  number % divider == 0
rescue ZeroDivisionError
  false
end

# checks to see 
def number_divisible_filter(number, dividers)
  dividers.map do |divider|
    divisible?(number, divider)
  end
end

# this also works like above ^
# def number_divisible_filter(number, dividers)
#   array = []

#   dividers.each do |divider|
#     array << divisible?(number, divider)
#   end

#   array
# end

def numbers_divisible_filter(numbers, dividers)
  numbers.map do |number|
    number_divisible_filter(number, dividers)
  end
end

puts divisible?(5, 2) # false
puts divisible?(100, 2) # true

puts number_divisible_filter(10, [3, 2, -5, 7]).to_s # [false, true, true, false]
puts number_divisible_filter(10, [0, 0, 0, 2]).to_s # [false, false, false, true]
puts numbers_divisible_filter([21, 6, 23], [3, 2, -5, 7]).to_s
# [[true, false, false, true], [true, true, false, false], [false, false, false, false]]