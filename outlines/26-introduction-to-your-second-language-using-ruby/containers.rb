# assign some values to colors
colors = %w{red blue white}
names = %w{orlando richard diana}

# create a new hash and set it colors and names respectively
colors_and_names = {
  :colors => colors,
  :names => names
}

# loop thru colors and display each color
colors_and_names[:colors].each do |color|
  puts color
end

# loop thru names and display each name
colors_and_names[:names].each do |name|
  puts name
end