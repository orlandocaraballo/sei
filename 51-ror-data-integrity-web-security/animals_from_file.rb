# same as require but you can omit the .
#   for your libraries
require_relative "animal"

# we create this empty array to use below
animals = []

# we split our file into lines
File.readlines("animals.txt").each do |line|
  # we split by colon and then store use destructuring to store it
  #   within two variables:
  #     http://tony.pitluga.com/2011/08/08/destructuring-with-ruby.html
  type, the_rest  = line.split(":")
  height_str, gender_str, weight_str = the_rest.split(",")
  
  # we push our object into our array
  # we do this by using ruby keyword params:
  #   https://robots.thoughtbot.com/ruby-2-keyword-arguments
  animals.push(Animal.new(
    type: type,
    weight: weight_str.split("=")[1].chomp.to_i,
    height: height_str.split("=")[1].chomp.to_i,
    gender: gender_str.split("=")[1].chomp
  ))
end

# we loop thru array so we can display it in the terminal
animals.each_with_index do |animal, index|
  # Allows us to display our text as is:
  #   https://infinum.co/the-capsized-eight/multiline-strings-ruby-2-3-0-the-squiggly-heredoc
  puts <<~HEREDOC
    ----------------------------
    animal-#{index}
      type    -> #{animal.type}
      weight  -> #{animal.weight}
      height  -> #{animal.height}
      gender  -> #{animal.gender}
  HEREDOC
end

