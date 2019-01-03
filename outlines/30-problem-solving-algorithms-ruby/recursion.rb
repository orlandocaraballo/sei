def recursive_sum(array)
  # Base Case:
  #  when array is down to one element, return that element
  if array.empty?
    return 0
  end
  
  # first element of array is removed
  #   stored in first_element
  first_element = array.shift
  
  # Recursive Step:
  #  the now shortened array is passed into the function
  return first_element + recursive_sum(array)
end

# wut D-:
puts recursive_sum([1,2,3,4,5])