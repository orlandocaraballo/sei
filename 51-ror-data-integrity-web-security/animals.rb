animals_file_by_lines = File.readlines("animals.txt")
animals_array = []

class Animal
  attr_accessor :height, :width, :gender, :type

  def initialize(attributes)
    @type = attributes[:type]
    @height = attributes[:height]
    @gender = attributes[:gender]
    @weight = attributes[:weight]
  end
end

animals_file_by_lines.each do |line|
  type, the_rest  = line.split(":")
  height_str, gender_str, weight_str = the_rest.split(",")
  
  animals_array.push(Animal.new({
    type: type,
    height: height_str.split("=")[1],
    gender: gender_str.split("=")[1],
    weight: weight_str.split("=")[1],
  }))
end

p animals_array