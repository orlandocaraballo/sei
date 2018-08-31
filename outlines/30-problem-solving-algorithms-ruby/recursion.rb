def recursive_sum(array)
  # Termination Condition:
  #   if the array is empty then return false
  if array.empty?
    return false
  end

  # Base Case:
  #  when array is down to one element, return that element
  if array.length <= 1
    # if its down to the last element then return
    return array.first
  end
  
  # first element of array is removed
  array.shift
  
  # Recursive Step:
  #  the now shortened array is passed into the function
  return array.first + recursive_sum(array)
end

# wut D-:
puts recursive_sum([1,2,3,4,5])