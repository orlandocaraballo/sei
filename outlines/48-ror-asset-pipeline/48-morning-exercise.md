<img src="deadlift.jpg" width="100%">

# Morning Exercise

1. Write a function in javascript called `zip`, that accepts two arguments `array1` and `array2`, both of which you can assume are arrays. The function should return an array where the first element of `array1` and the first element of `array2` are combined into one array of length two and that would be the first element of the return array, the second element of `array1` and the second element of `array2` are combined into one array of length two and that would be the second element of the return array, etc.

```js
zip([1,2,3,4], [5,6,7,8]) // [[1,5], [2,6], [3,7], [4,8]]
zip(
  ["poke", "john", "ronnie", "dot"],
  ["mons", "cena", "digital", "martin"]
) // [["poke", "mons], ["john", "cena"], ["ronnie", "digital"], ["dot", "martin"]]
```

2. If the `array1` is of larger than `array2` then all remaining elements of the returned array should be populated with `null`. If `array2` is larger than `array1` then those extra elements can be ignored.

```js
zip(["a", "b", "c", "d", "e"], [1,2,3,4]) // [["a", 1], ["b", 2], ["c", 3], ["d", 4], ["e", null]]

zip(["z", "i", "p"], ["d", "r", "i", "v", "e"]) // [["z", "d"], ["i", "r"], ["p", "i"]]
```

**Challenge:**

Create another function called `objectify` that accepts a zipped array argument and returns an object that looks like the following.

**Note:** Because it does accept a zipped array, you can assume that every array element is of length 2.

```js
objectify([[1, 99], [3, -90], ["x", 3], ["q", null]]) // { 1: 99, 3: -90, x: 3, q: null}
```