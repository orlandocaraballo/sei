<img src="exercise.jpg" style="width:100%">

# Morning Exercise

1. Create a 4 functions `add`, `subtract`, `divide`, `multiply`. All four functions accept two arguments (`arg1` and `arg2`).

  - `add` adds two arguments together
  - `subtract` subtracts `arg2` from `arg1`
  - `divide` divides `arg1` by `arg2`
  - `multiply` mutiplies `arg1` by `arg2`

2. Create one more function called `calculator` that accepts three arguments (`arg1`, `arg2`, and `operation`).

This function should check what the value of `operation` is and depending on what value is passed in it should do what the `operation` indicates. Make sure to make use of the prior created functions within `calculator`.

```js
calculator(2, 2, "add") // 4
calculator(10, 15, "multiply") // 150
calculator(90, 4, "subtract") // 86
calculator(9, 3, "divide") // 3
```

*Challenge:*

Change the `calculator` function to accept a function callback as the third argument. How would you utilize that callback function to do the execute the same behavior as number 2?