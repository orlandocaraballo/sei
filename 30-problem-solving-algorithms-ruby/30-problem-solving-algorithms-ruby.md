![Algorithms](algorithms.jpg)

# Problem Solving and Algorithms in Ruby

## Refresher on Problem Solving / Algorithms

[Common Algorithms and Problem Solving Techniques](../09-problem-solving-algorithms-js/09-problem-solving-algorithms-js.md)

## Solving Larger Problems

- Break problems down
- Solve individual problems
- Put smaller solutions back together into larger solution

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


