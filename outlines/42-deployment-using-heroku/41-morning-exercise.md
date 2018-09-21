<img src="morning-exercise.jpeg" width="100%">

# Morning Exercise

Create two functions `smallest` and `largest` that accept an array as an argument that finds the smallest and largest element in the array respectively. Use the following starter code as a base:

```ruby
def smallest(array)
  # your code here
end

def largest(array)
  # your code here
end

test_array = [98, -43, 7, -2, 19, 240]

smallest(test_array) # -43
largest(test_array) # 240
```

_Note: You cannot use the ruby `max` or `min` methods to do this_

## Challenge

Create two functions called `smallest_of_all` and `largest_of_all`. Both of these functions accept a multidimensional array. `smallest_of_all` finds the smallest number in the multidimensional array. `largest_of_all` finds the largest number in the multidimensional array.


```ruby
def smallest_of_all(array)
  # your code here
end

def largest_of_all(array)
  # your code here
end

test_array = [
  [98, -43, 7, -2, 19, 240],
  [1000, -2, 5, 3, 98, -32],
  [0, -9001, 7, -2, 8, 4321],
  [77, 0, 99, -23, -1, 345]
]

smallest_of_all(test_array) # 4321
largest_of_all(test_array) # -9001
```

_Note: You cannot use the ruby `max` or `min` methods to do this_