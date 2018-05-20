# colors = ["green", "orange", "black"]
# names = ["yorvin", "jon", "mary"]

# colors_and_names = {
#   color: colors,
#   names: names
# }

# names.each { |name| puts name }
# colors.each { |color| puts color }

# colors_and_names[:names].each { |name| puts name }
# colors_and_names[:colors].each { |color| puts color }

def dummy
  numbers = (1..5).to_a

  new_array = numbers.map do |element|
    element + 1
  end

  return new_array
end

def another_func(another_number)
  another_number += [2]
end

puts another_func(dummy())

# puts numbers
