<img src="morning-exercise.jpg" width="100%">

# Morning Exercise

The following should be done in javascript:

1. Create a function named `literalToArray` that accepts an object literal argument named `literal` and converts this argument into an array. Every element of the array should be an array of size two where the first element of the internal array is the key and the second element is the value.

```js
literalToArray({ 
  name: 'orlando', 
  age: 34, 
  bday: '12/01/1983' 
}) // [['name', 'orlando'], ['age', 34], ['bday', '12/01/1983'] ]
```

2. Create a function called `unwindArray` that accepts an array of arrays named `arrayOfArrays` much like the output of above and returns an object literal. The object literal should have two keys:
- `keys` - that stores an array of all the first elements of the internal arrays
- `values` that stores an array of all the second elements of the internal arrays

```js
unwindArray([
  ['name', 'orlando'], 
  ['age', 34], 
  ['bday', '12/01/1983']
]) // { keys: ['name', 'age', 'bday'], values: ['orlando', 34, '12/01/1983'] }
```

3. Create a function named `unwindLiteral` that accepts an object literal as an argument named `literal`. The return value of the this object should be another object literal with two keys:
- `keys` - that stores an array of all the keys of `literal`
- `values` that stores an array of all the values of `literal`

```js
unwindLiteral({ 
  name: 'orlando', 
  age: 34, 
  bday: '12/01/1983' 
}) // { keys: ['name', 'age', 'bday'], values: ['orlando', 34, '12/01/1983'] }
```

*Note: Do not use any javascript built in functions for extracting keys or values.*