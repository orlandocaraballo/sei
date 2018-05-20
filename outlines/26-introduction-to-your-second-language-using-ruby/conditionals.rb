big_number = 999999
small_number = 5

if big_number > small_number
  puts "Everything is fine in the universe!"
end

if small_number == 5
  puts "Something doesn't seem right"
end

if big_number > small_number && small_number == 5
  puts "Both conditions are met"
else
  puts "One or more conditions are not met"
end
