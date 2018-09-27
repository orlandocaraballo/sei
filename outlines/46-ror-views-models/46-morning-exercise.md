<img src="exercise.jpg" width="100%" />

# Morning Exercise

## Write three functions in javascript named `combiner`, `summer` and `multiplier`.

1. The `summer` function accepts two integer arguments that are summed together and returned from the function.

```js
summer(10,15) // 25
summer(100,2) // 102
summer(54,13) // 67
```

2. The `multiplier` function accepts two integer arguments that are multiplied together and returned from the function.

```js
multiplier(2,100) // 200
multiplier(3,-25) // -75
multiplier(11,10) // 110
```

3. The `combiner` function accepts two integer arguments.
    - These two arguments should be summed together (using `summer`)
    - These two arguments should be multiplied together (using `multiplier`)
    - The result of both of these operations should be returned in an array where the first element is the result of the `summer` function and the second element is the result of `multiplier` function.

```js
combiner(-5, 5) // [0, -25]
combiner(1,9000) // [9001, 9000]
combiner(-3, 51) // [48, -153]
```

## Challenge (if you have time)

Do it in Ruby