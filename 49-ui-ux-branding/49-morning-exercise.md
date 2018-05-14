<img src="exercise.jpg" width="100%">

# Morning Exercise

Create a function in javascript named `compare` that accepts an array of numbers called `numbers` and an integer called `value`. This function should return an array of arrays of size 3 where the first element stores an array of all numbers that are less than `value`, the second element are all numbers equal to `value` and the third element are all numbers greater than `value`.

```js
compare([10, -30, -45, 4, 21, -30], -30) // [[-45], [-30, -30], [10, 4, 21]]
```

**Challenge:**

Create a function called `flatten` that accepts an array of arrays named `unflattenedArray` and returns an array of all numbers within `unflattenedArray` without any inner arrays.

```js
flatten([[9], [42, 12, -1], [-9, 1001, 2], [23, 56]]) // [ 9, 42, 12, -1, -9, 1001, 2, 23, 56 ]
```

**Note:** The array of arrays can be of any length. Assume the arrays of arrays goes only one level deep. Meaning you **cannot** pass in something like `[[-4, 92], [10, [-34, 6]]]`