<img src="sexy.jpg" style="width: 100%" />

# Introduction to Another Language using Ruby

## Similarities between languages

_When learning a new language always look for similarities in what you have already learned beforehand in other languages, then start picking up the new features not available beforehand_

## Ruby

_Ruby is a language that puts readability and expressiveness as its priority_

[Homepage](https://www.ruby-lang.org/en/)

## Author

![Matz](matz.jpg)

Yukihiro Matsumoto

_I believe people want to express themselves when they program. They don't want to fight with the language. Programming languages must feel natural to programmers. I tried to make people enjoy programming and concentrate on the fun and creative part of programming when they use Ruby._

## Installing Ruby

Ruby has had many versions of it available over time, in order to manage ruby versions going forward we will be utilizing a tool that keeps track of which ruby version we are using as well enables us to install our ruby versions. The name of this tool is __RVM__

[RVM](https://rvm.io/rvm/install)

## Interactive Ruby

Interactive ruby gives us the ability to test out commands in the terminal without having to execute from a file. The terminal command for this is `irb`.

```bash
~/orlandocaraballo $ irb
2.4.0 :001 > i = 4
=> 4 
2.4.0 :002 > i += 1
=> 5
```

## Running From File

All ruby files should have the extension `.rb`. If we had a file named `hello_world.rb` we can execute this file using the command `ruby hello_world.rb`

```bash
 $ ruby hello_world.rb
```

## Loading Other Ruby Files

```ruby
# hello_world.rb
puts "Hello World!"
```

```ruby
# goodbye_world.rb
require "./hello_world"

puts "Goodbye World!"
```

```bash
# would display Hello World! then
# Goodbye World! to the terminal
$ ruby goodbye_world.rb
```

## Keywords

```ruby
# short list
def
end
class
module
if
else
elsif
begin
nil
```

[Ruby Docs: Keywords](https://docs.ruby-lang.org/en/2.2.0/keywords_rdoc.html)

## Data Types

- Integer
- Float
- String
- Boolean
- Symbol
- Array
- Hash
- Constant

[Zetcode: Ruby Datatypes](http://zetcode.com/lang/rubytutorial/datatypes/)

## Variables

```ruby
nil # this is how ruby represent "nothing"

# no let / var required
dog_name = "optimus prime" # string
number = 29 # integer
array = [1,2,3,4] # array

NAME = "orlando" # constant
NAME = "denisse" # error

array[2] # 3

sister = {
  "name" => "denisse",
  "gender" => "female",
  "age" => 23
}

sister["name"] # denisse

# using symbols
me = {
  :name => "orlando",
  :gender => "male",
  :age => 34
}

me[:gender] # male

# shorthand
me_2 = {
  name: "orlando",
  gender: "male",
  age: 34
}

me[:age] # 34 
```

## Display to Console

```ruby
name = "orlando"

# displays the variable value in the terminal
puts name

# same as above except that it adds a new line 
#   and does other interesting things... more on this later
p name
```

## Operators

```ruby
# most of the standard operators exist
1 + 15
2 - 1
8 * 9
4 / 3

# not all though
number = 5

# this does not work in Ruby /shrug
number++ 

# this does work though
number += 1

# creates an inclusive range that represents
#   all numbers between 1 and 10 
1..10 # 1 2 3 4 5 6 7 8 9 10

# creates an exclusive range that represents
#   all numbers between 1 and 10
1...10 # 1 2 3 4 5 6 7 8 9
```

[Tutorialspoint: Ruby Operators](https://www.tutorialspoint.com/ruby/ruby_operators.htm)

## Exercises

__First Steps__
1. Create a file named `hello_world.rb`
2. Write code to display the words `"Hello World"` to the console.
3. What is the purpose of using irb over a file?

__IRB Practice__
1. Try adding subtracting multiplying and dividing
2. Try storing values in variables and running some operations on them
3. Become comfortable with IRB because we will be using it a lot
4. Try requiring the `hello_world.rb` file
5. What happened when you required it?
6. Name the differences and similarities between javascript and ruby console?

__Basics__
1. Create a new file named `basics.rb`, write code to do the following:
2. Add the numbers `5` and `10` together.
3. Subtract `1090` from `63`
4. Store the result of the prior statement into a variable named `result`.
5. Divide the result variable by `25` and store this value into a variable named `second_result`
6. Convert this value into a string and store it into `second_result`
7. Prefix the prior string with the words `"The value of the second result is [second_result]"` and display it in the console.

## Some Fanciness

```ruby
grocery_list = %w{chicken milk bananas eggs}
grocery_list == ["chicken", "milk", "bananas", "eggs"] # true

# yes this works
first, second, third, fourth = grocery_list

puts first # chicken
puts second # milk
puts third # bananas
puts fourth # eggs
```

```ruby
# ranges
(1..10).to_a # [1,2,3,4,5,6,7,8,9,10]
(1...10).to_a # [1,2,3,4,5,6,7,8,9]
```

```ruby
# yes, this is possible
grocery_list = %w{chicken milk bananas eggs}
grocery_list - ["chicken"] # ["milk", "bananas", "eggs"]
grocery_list + ["beef"] # ["chicken", "milk", "bananas", "eggs", "beef"]
```

```ruby
"hello class " * 3 # "hello class hello class hello class "
```

```ruby
numbers = (1..10).to_a # [1,2,3,4,5,6,7,8,9,10]

# are you starting to see the hottness? :-D
numbers.first # 1
numbers.first(2) # [1,2]
numbers.last # 10
numbers.last(3) # [8,9,10]

numbers[-1] # 10
numbers[-2] # 9
numbers[3..8] # [4,5,6,7,8,9]
```

## Comparison Operators

```ruby
number = 5

number > 3 # true
number < -9 # false
number == "5" # false
number === "5" # also false; does not mean the same thing as in js

number > 3 && number < 10 # true
number > 3 and number < 10 # true, avoid using this

number > 3 || number < -9 # false
number > 3 or number < -9 # false, avoid using this
```

[Ruby in Rails: Different Between `and` and `&&`](https://rubyinrails.com/2014/01/30/difference-between-and-and-in-ruby/)

## Conditionals

```ruby
number = 5

if number < 10
  puts "This number is less than 10"
end

if number < 10
  puts "This number is less than 10"
else
  puts "This number is not less than 10"
end

if number < 10
  puts "This number is less than 10"
elsif number > 10
  puts "This number is greater than 10"
else
  puts "This number is not less than 10"
end
```

## Exercises

__Conditionals__
1. Create a new file named `conditionals.rb`, write code to do the following:
2. Create two variables named `big_number` and `small_number` and set them equal to a `999999` and `3` respectively.
3. Write a conditional that checks if `big_number` is greater than `small_number` and if so it displays the text `"Everything is fine in the universe!"`
4. Change the conditional to check if `small_number` is equal to `5` and if so display `"Something doesn't seem right"`.
5. Change the conditional to fulfil both conditions.

## Looping

```ruby
i = 0

while i < 4 do
  puts i
  i += 1
end

# loops thru every food item and displays it to the console
grocery_list = %w{bananas apple bread milk}

for food_item in grocery_list do
  puts food_item
end

grocery_list.each do |food_item|
  puts food_item
end

grocery_list.each_with_index do |food_item, index|
  puts "#{element} is located in #{index}"
end

# this does the same thing but on one line
grocery_list.each { |food_item| puts food_item }

person = { name: "orlando", gender: "male", age: 34 }

# this loops thru every key and value
#   then diplays both keys and values to console
person.each { |element| puts element } # name orlando gender male age 34

# yes this works
person.each do |(key, value)|
  puts "The #{key} key is set to #{value}"
end
```

## Exercises

__Containers__
1. Think of three colors and store the colors, as strings, in an array named `colors`
2. Think of three names and store the names, as strings, in an array named `names`
3. Create a new hash named `colors_and_names` with two keys, one key is named `colors` and the other is named `names`. Set the value of the colors key to the colors array and set the value of `names` to the `names` array. What did we just achieve?
4. Loop thru each name in the `names` array and display it on the console.
5. Loop thru each color in the `colors` array and display it on the console.
6. Loop thru each name within the `colors_and_names` hash and display it on the console.
7. Loop thru each color within the `colors_and_names` hash and display it on the console.

## Functions

```ruby
def add(argument1, argument2)
  return argument1 + argument2
end

# same as above
def add(argument1, argument2)
  argument1 + argument2
end

add(4, 5) # 9

# this also works and may be prefferable for readability
add 4, 5 # 9
```

```ruby
def display_orlando_to_console
  puts "orlando"
end
```

# Scoping

```ruby
number = 5

# this does not work
def add_two
  number + 2 # this line will trigger an error
end

# this does work
def add_two(number)
  number + 2
end

add_two(5) # 7
```

```ruby
number = 2

# you can access local variables within a block
[1,2,3,4,5].map do
  number  
end # [2,2,2,2,2]
```

## Conventions

Question marks should return boolean values

```ruby
def larger_than_4?(number)
  number > 4
end
```

Exclamation points modify data passed in

```ruby
numbers = (1..5).to_a

# returns a new array
numbers.map do |element|
  element + 1
end

numbers # [1,2,3,4,5]

# returns the same array as before,
#   now modified
numbers.map! do |element|
  element + 1
end

numbers # [2,3,4,5,6]
```

## Exercises

__Functions__
1. Create a new file named `functions.rb`, write code to do the following:
2. Define a function named `divide` that accepts two arguments and returns the result of dividing the first argument by the second argument.
3. Define a function named `divide_and_display` that accepts two arguments and returns  the result of dividing the first argument by the second argument but prefixed with the text `"The result of dividing [first_argument] by [second_argument] is [result]"`.
4. How could we DRY up this code?
5. Name some advantages and disadvantages of this approach.
6. Change the code to only divide when the second argument is greater than or equal to `1` otherwise display the text `"Second argument must be greater than or equal to 1"` to the console.

# Ruby Core Library

[Ruby Docs](http://ruby-doc.org/)

## Workshop

[Ruby Reps](https://drive.google.com/open?id=1ehOZeOESDBio6ol3Vn7VwpvK3zki9WRknDjVTGwsYyc)