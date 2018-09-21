def smallest(array)
  smallest_element = array[0]

  array[1..-1].each do |element|
    smallest_element = if element < smallest_element
      element
    else
      smallest_element
    end
  end

  smallest_element
end

def largest(array)
  largest_element = array[0]

  array[1..-1].each do |element|
    largest_element = if element > largest_element
      element
    else
      largest_element
    end
  end

  largest_element
end

def smallest_of_all(multidimensional_array)
  smallest_elements = []

  multidimensional_array.each do |row|
    smallest_elements.push(smallest(row))
  end

  smallest(smallest_elements)
end

def largest_of_all(multidimensional_array)
  largest_elements = []

  multidimensional_array.each do |row|
    largest_elements.push(largest(row))
  end

  largest(largest_elements)
end

array = [98, -43, 7, -2, 19, 240]
multidimensional_array = [
  [98, -43, 7, -2, 19, 240],
  [1000, -2, 5, 3, 98, -32],
  [0, -9001, 7, -2, 8, 4321],
  [77, 0, 99, -23, -1, 345]
]

puts smallest(array) # -43
puts largest(array) # 240
puts smallest_of_all(multidimensional_array) # -9001
puts largest_of_all(multidimensional_array) # 4321

# spaceship operator
# https://ruby-doc.org/core-2.1.5/Object.html#method-i-3C-3D-3E