require_relative "swap"

def bubble_sort(array)
  first_loop_max_index = array.length - 1
  second_loop_max_index = array.length - 1
  
  (0...first_loop_max_index).each do |i|
    (0...second_loop_max_index).each do |j|
      if array[j] > array[j + 1]
        swap(array, j, j + 1)
      end
    end
    
    second_loop_max_index = second_loop_max_index - 1
  end
  
  array
end

puts bubble_sort([9001, 25, 5, 12, -46]) # [-46, 5, 12, 25, 9001]