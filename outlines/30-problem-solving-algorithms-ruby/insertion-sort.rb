require_relative "swap"

def insertion_sort(array)
  first_loop_max_index = array.length - 1
  
  (1..first_loop_max_index).each do |i|
    i.downto(1).each do |j|
      if array[j - 1] > array[j]
        swap(array, j - 1, j)
      end
    end
  end
  
  array
end

puts insertion_sort([9001, 25, 5, 12, -46])