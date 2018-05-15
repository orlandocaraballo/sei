![Algorithms](algorithms.jpg)

# Problem Solving and Algorithms in Ruby

## Refresher on Problem Solving / Algorithms

[Common Algorithms and Problem Solving Techniques](../09-problem-solving-algorithms-js/09-problem-solving-algorithms-js.md)

## Solving Larger Problems

- Break problems down
- Solve individual problems
- Put smaller solutions back together into larger solution

##  Identify the Pattern

Sometimes the problem looks much like something else you may have seen in the past. In these scenarios, it's important to note what pattern you've used to solve this issue and utilize that solution for this scenario

Steps
1. Identify if I know how to solve it immediately
2. If yes then the problem is solved by default
3. If not then see if this is similar to something I've done in the past
4. If yes then find notes or identify solution to similar problem case
5. If not then work through solution using steps outlined [here](../09-problem-solving-algorithms-js/09-problem-solving-algorithms-js.md)

### Example

We need to create behavior in ruby where I need to reverse a string. We've identified that this reminds me of an array reverse in javascript.

```js
// for example, if I know how to reverse an array in js
//  and I know I have to do the same in ruby, I can most likely
//  use a similar solution to create an algorithm for a problem

function reverse(array) {
  let reversedArray = []
  
  for(let i = array.length - 1; i >= 0; --i) {
    reversedArray.push(array[i])
  }

  return reversedArray
}
```

This is very similar to reversing a string in the following ways:
- we can iterate through a string much like an array
- we can convert a string to an array and vice versa very easily
- we know we need to iterate in reverse much like an array
- we know we need to create an accumulator variable where add one value to the end of the variable on every iteration step

```ruby
def reverse(string)
  reversed_string = ""

  for i in (string.length - 1).downto(0)
    reversed_string += string[i]
  end

  return reversed_string
end
```

Using our two similar pieces of information we were able to formulate a solution based on the prior code that was written.

## Common Algorithms

### Bubble Sort

- Requires a double loop
- Requires you to:
  1. Compare adjacent numbers
  2. Swap if number on left is greater than on right
  3. Then do the same for the next number
  4. When reaching the end of the list, assume the last number is sorted
  5. Repeat steps 1 - 4 while ignoring sorted numbers

### Insertion Sort

- Requires a double loop
- Requires you to:
  1. Compare adjacent numbers 
  2. Swap if the number on left is greater than right
  3. Repeat steps 1-2 with the numbers before that until number is in right place
  4. Repeat steps 1-3 with the next number in the list

### Linear Search

- Requires you to search through every element in the array
- If input match is found then return index

### Binary Search

- Sort the list
- Divide list in half
- Run binary search on left half
- Run Binary search on right half
- If either half is a single number then return index if number matches input

## Workshop

[Fizz Buzz: The Sequel](https://drive.google.com/open?id=1ELPy8iwkAFbqEDEHlYAnIFddcI0XMdvZO_Ys-FtKNiQ)


