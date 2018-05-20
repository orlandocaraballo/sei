![Quiz](https://swoonproduction.s3.amazonaws.com/media/original_images/quiz_xEHRxwV.jpg)

# Morning Quiz

1. What would you rename this function to? Why? How would you improve this code?

```ruby
def no_name(x)
  l = x.length

  for i in 0..l
    x[i] = (x[i] * 1) * x[i]
  end

  x
end

no_name([-3, -12, 2]) # [9, 144, 4]
```
2. What is the difference between a function and a class?

3. Translate this Ruby code into Javascript:

```ruby
class Joke
  attr_accessor :name, :content

  def initialize(name, content)
    @name = name
    @content = content
  end

  def tell
    @content
  end
end

class GoodJoke < Joke
  attr_accessor :funny

  def initialize(name, content)
    @funny = true
    
    super(name, content)
  end
end

class BadJoke < Joke
  attr_accessor :funny

  def initialize(name, content)
    @funny = false

    super(name, content)
  end
end

bad_joke = BadJoke.new("knock knock", "knock, knock...")
good_joke = GoodJoke.new("question", "what are those!?")

puts good_joke.tell
puts bad_joke.tell
```

4. What is the code structure that is **always** needed in every HTML page?
    - Meaning, what code do you always need to have on every html page?

5. Label the following code into keywords, symbols and names that are defined by a developer in the following code:

```js
function loopBackwardsAndConsoleLog(array) {
  for(let i = array.length - 1; i >= 0; ++i) {
    console.log(array[i])
  }
}
```

6. What are the concepts that we have learned so far, that are the most challenging for you?

7. Is the following code correct? Why?

```js
function namePlusTen() {
  return name + 10
}

name = "orlando"
namePlusTen()
```

8. Write down in words your process for solving number 2 and number 7?

9. Given the following list of comments:
    - That's what she said
    - Minhal is amused...
    - When would you use this?
    - I am the html5 master!
    - Third eye open
    - [Whistle] Look at dat sauce
    - This death wish coffee is all for me... Mwahaha!

    a. Describe this list in code form.

    b. What javascript code would I write to allow someone to swap a value from one location on the list to another location on the list?

10. Given the list on number 9, assign each comment / phrase to the person it best fits. If you had to describe this relationship in javascript and ruby code, how would you write it?

11. If you had to rate your confidence level so far in this course using a scale of 1-10 where 1 is "absolutely lost" and 10 is "extremely confident", where would you place yourself? Why? What current habits are you utilizing to improve your confidence in the course?

12. What is best in life?