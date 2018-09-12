<img src="morning-exercise.jpg" width="100%">

# Morning Exercise

1. Create a `function` named `joinEven` in javascript that accepts an argument of type `Array` named `array`. This `function` should return a string of the array's odd numbers separated by a space.

```js
const array = [-57, 33, 2, -102];

joinOdd(array); // -57 33
```

2. Create a `function` named `joinEven` in javascript that accepts an argument of type `Array` named `array`. This `function` should return a string of the array's even numbers separated by a space.

```js
const array = [-57, 33, 2, -102];

joinEven(array); // 2 -102
```

## Challenge

3. Create a `function` named `joinByDivisible` in javascript that accepts two arguments. The first argument is of type `Array` named `array`. The second argument is of type `Number` named `divisor`. This `function` should return a string with all numbers that are divisible by `divisor` separated by a space.

```js
const array = [-57, 33, 2, -102];

joinByDivisible(array, 3); // -57 33 -102
```

- How can we change the prior functions to utilize `joinByDivisible` so we can DRY up our code?