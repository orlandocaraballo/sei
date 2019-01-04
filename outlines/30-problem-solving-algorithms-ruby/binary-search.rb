def binary_search(array, number)
  start_point = 0
  end_point = array.length - 1
  
  while start_point <= end_point do
    mid_point = (end_point + start_point) / 2
    
    if array[mid_point] == number
      return mid_point
    elsif array[mid_point] < number
      start_point = mid_point + 1
    elsif array[mid_point] > number
      end_point = mid_point - 1
    end
  end
  
  return "Number is not in the list"
end

def binary_search_recursive(array, number, start_point, end_point)
  if end_point >= 1
    mid_point = (end_point + start_point) / 2

    # if the element is present at the midpoint 
    if array[mid_point] == number
      return mid_point
    elsif array[mid_point] > number
      # if element is smaller than midpoint, then 
      #   it can only be present in left subarray 
      return binary_search_recursive(array, number, start_point, mid_point - 1)
    else
      # else the element can only be present 
      #   in right subarray 
      return binary_search_recursive(array, number, mid_point + 1, end_point)
    end
  end

  return -1
end

array = [-46, 5, 12, 25, 9001]
puts binary_search_recursive(array, 2, 0, array.length - 1)