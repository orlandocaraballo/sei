<img src="morning-exercise.jpg" width="100%">

# Morning Exercise

Create a function in ruby called `carousel` that accepts one parameter of type `Array`. This function should loop infinitely. Every two seconds the function it should move the first element of the array to the end of the array and shift every other element over to the left. So when I run `carousel` with an input of `[1,2,3,4]` below, it would output the following to the terminal:

```ruby
carousel([1,2,3,4])

# [1, 2, 3, 4]
# [2, 3, 4, 1]
# [3, 4, 1, 2]
# [4, 1, 2, 3]
# [1, 2, 3, 4]
# [2, 3, 4, 1]
```

If you need some ideas on what is possible with arrays, take a look at the `Array` class in the [docs](https://ruby-doc.org/core-2.4.1/Array.html) for examples of what you can do with an array. You can use the `sleep` function built into to Ruby to delay the program for two seconds in between the loop. You can read more about the sleep function [here](https://ruby-doc.org/core-2.2.3/Kernel.html#method-i-sleep). You can achieve an infinite loop by placing your code within here:

```ruby
while true do
  # your code goes here
end
```

## Bonus

If you have some time, attempt to monkey patch this carousel function into the `Array` class so that the following works:

```ruby
[1,2,3,4,5,6].carousel

# [1, 2, 3, 4, 5, 6]
# [2, 3, 4, 5, 6, 1]
# [3, 4, 5, 6, 1, 2]
# [4, 5, 6, 1, 2, 3]
# [5, 6, 1, 2, 3, 4]
# [6, 1, 2, 3, 4, 5]
# [1, 2, 3, 4, 5, 6]
```

For more information on how to monkey patch a class you can take a look at this [article](https://www.culttt.com/2015/06/17/what-is-monkey-patching-in-ruby/).