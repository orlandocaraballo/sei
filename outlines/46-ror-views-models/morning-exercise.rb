def summer(num1, num2)
  num1 + num2
end

def multiplier(num1, num2)
  num1 * num2
end

def combiner(num1, num2)
  [ 
    summer(num1, num2), 
    multiplier(num1, num2)
  ]
end

puts summer(10,15)
puts multiplier(3,-25)
puts combiner(-3, 51).to_s