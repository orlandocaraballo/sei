<img src="high_jump.jpg" width="100%">

# Morning Exercise

Open the file, [animals.txt](animals.txt), in ruby and gather all the attributes from the file then store them in an animal object with the following attributes. Try using the `File.open` method to open a file and loop thru every line.

```ruby
# you would replace '[filename]' with the filename you are trying
#   to open
File.open('[filename]') do |line|
  # line represents the current line you are looping
  #  thru in the file you've just opened
  # your logic would go here
end
```

You can read more about this method and other ruby `File` operations in this [article](https://www.codecademy.com/articles/writing-to-file-ruby).

Your script should display the objects as terminal output. If you were to run this script from the terminal the output should be similar to the following.

```ruby
$ ruby morning_exercise.rb
$ #<Animal:0x423270c @type="giraffe", @height=10, @gender=male, @weight=320>
$ #<Animal:0x423370c @type="elephant", @height=7, @gender=female, @weight=200>
$ #<Animal:0x423470c @type="kangaroo", @height=10, @gender=female, @weight=400>
```

```ruby
type
height
gender
weight
```

**Note:** Assume file contents attributes are in the same order.

## Challenge

It probably makes sense to make this script more dynamic. Make it so that the ruby script accepts one terminal argument as the filename and then uses this argument to generate the ruby classes and display on the terminal output. Make a copy of the file and name it `animals-from-terminal.txt` (change some of the values in the text file if you wish) then try to see if the code still works.

```ruby
# assuming you named your ruby script 'morning_exercise.rb'
$ ruby morning_exercise.rb animals-from-terminal.txt
$ #<Animal:0x423270c @type="giraffe", @height=10, @gender=male, @weight=320>
$ #<Animal:0x423370c @type="elephant", @height=7, @gender=female, @weight=200>
$ #<Animal:0x423470c @type="kangaroo", @height=10, @gender=female, @weight=400>
$ ...
```