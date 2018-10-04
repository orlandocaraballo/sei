class Animal
  # attr_reader :type, :height, :gender, :weight

  def initialize(type, height, gender, weight)
    @type = type
    @height = height
    @gender = gender
    @weight = weight
  end
end

# you would replace '[filename]' with the filename you are trying
#   to open
begin
  File.open(ARGV[0]).each do |line|
    # line represents the current line you are looping
    #  thru in the file you've just opened
    array = line.split(':')
    type = array[0]

    height_string = array[1].split(',')[0].sub(' ', '') # height=10
    gender_string = array[1].split(',')[1].sub(' ', '') # gender=male
    weight_string = array[1].split(',')[2].sub(' ', '') # weight=320

    # sets object arguments
    height = height_string.split('=')[1].to_i
    gender = gender_string.split('=')[1]
    weight = weight_string.split('=')[1].to_i

    puts Animal.new(type, height, gender, weight).inspect
  end
rescue Errno::ENOENT => e
  puts 'There has an error, the file you chose is not found'
end