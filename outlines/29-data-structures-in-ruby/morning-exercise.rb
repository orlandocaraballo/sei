class Array
  def carousel
    while true do
      puts self.to_s

      self.push(self.shift)

      sleep 2
    end
  end
end

[1,2,3,4,5,6].carousel

# def carousel(array)
#   while true do
#     puts array.to_s
    
#     array.push(array.shift)

#     sleep 2
#   end
# end

# carousel([1,2,3,4,5,6])