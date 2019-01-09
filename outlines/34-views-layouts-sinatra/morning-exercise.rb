# time to monkey patch the Array class
class Array
  def far_each
    for element in self
      yield(element) if block_given?
    end
  end
end

[11, -22, 44, 56].far_each do |element|
  puts element * 20
end