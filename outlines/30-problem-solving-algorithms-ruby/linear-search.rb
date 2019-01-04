def linear_search(array, number)
  array.each_with_index do |element, index|
    return index if element == number
  end
  
  return "Number is not in the list"
end

puts linear_search([9001, 25, 5, 12, -46], 12)