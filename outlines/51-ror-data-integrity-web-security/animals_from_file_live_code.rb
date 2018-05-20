animals = File.readlines("animals.txt")

class Animal
  attr_accessor :type, :height, :gender, :weight

  def initialize(type, height, gender, weight)
    @type = type
    @height = height
    @gender = gender
    @weight = weight
  end
end

animals.each do |animal|
  type = animal.split(" ")[0].sub(":", "")

  height_with_equals = animal.split(" ")[1].sub(",", "")
  gender_with_equals = animal.split(" ")[2].sub(",", "")
  weight_with_equals = animal.split(" ")[3]

  height = height_with_equals.split("=")[1].to_i
  gender = gender_with_equals.split("=")[1]
  weight = weight_with_equals.split("=")[1].to_i

  p Animal.new(
    type,
    height,
    gender,
    weight
  )
end