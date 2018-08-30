class Array
  def carousel
    while true do
      puts self.to_s
      element = self.shift
      self.push(element)
      sleep 2
    end
  end
end

([1,2,3,4,5,6]).carousel

