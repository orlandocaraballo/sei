def smallest(array)
  array.reduce do |final, element|
    final = element < final ? element : final
  end
end

def largest(array)
  array.reduce do |final, element|
    final = element > final ? element : final
  end
end

def smallest_of_all(multidimensional_array)
  multidimensional_array.reduce(smallest(multidimensional_array[0])) do |smallest_element_so_far, current_row|
    smallest_element_of_current_row = smallest(current_row)

    smallest_element_so_far = if smallest_element_of_current_row < smallest_element_so_far
      smallest_element_of_current_row
    else
      smallest_element_so_far
    end
  end
end

def largest_of_all(multidimensional_array)
  multidimensional_array.reduce(largest(multidimensional_array[0])) do |largest_element_so_far, current_row|
    largest_element_of_current_row = largest(current_row)

    largest_element_so_far = if largest_element_of_current_row > largest_element_so_far
      largest_element_of_current_row
    else
      largest_element_so_far
    end
  end
end

array = [98, -43, 7, -2, 19, 240]
multidimensional_array = [
  [98, -43, 7, -2, 19, 240],
  [1000, -2, 5, 3, 98, -32],
  [0, -9001, 7, -2, 8, 4321],
  [77, 0, 99, -23, -1, 345]
]

# puts smallest(array) # -43
# puts largest(array) # 240
puts smallest_of_all(multidimensional_array) # -9001
puts largest_of_all(multidimensional_array) # 4321