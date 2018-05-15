<img src="exercise.jpg" width="100%">

# Morning Exercise

1. Create a function in ruby called `divisible?` that accepts two arguments `number` and `divider`. The function should return whether `number` is divisible by `divider`.

2. Create a function in ruby called `number_divisible_filter` that accepts two arguments `number` and `dividers`. The function should return an array of booleans determining the if `number` is divisible by the set of `dividers`.

```ruby
number_divisible_filter(10, [3, 2, -5, 7]) # [false, true, true, false]
```

**Note:** rescue from `ZeroDivisionError` and place `false` in the matching array index

```ruby
number_divisible_filter(10, [0, 0, 0, 2]) # [false, false, false, true]
```

3. Create a function in ruby called `numbers_divisible_filter` that accepts two arguments `numbers` and `dividers`. The function should return an array of arrays. Each sub-array should house booleans determining whether the number is divisible by the set of `dividers`.

```ruby
numbers_divisible_filter([21, 6, 23], [3, 2, -5, 7])
# [[true, false, false, true], [true, true, false, false], [false, false, false, false]]
```