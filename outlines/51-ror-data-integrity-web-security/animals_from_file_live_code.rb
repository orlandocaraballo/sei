class Animal
  def initialize(type, height, gender, weight)
    @type, @height, @gender, @weight = type, height, gender, weight
  end
end

File.open(ARGV[0]).each do |line|
  split_by_colon = line.split(":")
  type = split_by_colon[0]

  split_by_comma = split_by_colon[1].strip.split(", ")

  height = split_by_comma[0].split("=")[1]
  gender = split_by_comma[1].split("=")[1]
  weight = split_by_comma[2].split("=")[1]

  p Animal.new(type, height, gender, weight)
end

