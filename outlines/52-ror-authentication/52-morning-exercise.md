<img src="suitcase.jpg" width="100%">

# Morning Exercise

## Pre-lesson

Today's exercise is half exercise and half lesson. In javascript oftentimes you will see a pattern where a function will return an anonymous function from it like so:

```js
function shareTableDimensionsWithInnerFunction() {
  let height = "40 ft"
  let width = "10 ft"

  return () => {
    return `The height: ${height} and width: ${width} are available to us in this function`
  }
}

let dimensionClosure = shareTableDimensionsWithInnerFunction()

// returns the text:
//    The height: 40ft and width: 10ft are available to us in this function
console.log(dimensionClosure()) 
```

^ If you notice above, the inner function being passed out of the outer function has access to `height` and `width`. This is called a closure. For more information read this [article](https://medium.com/@dis_is_patrick/practical-uses-for-closures-c65640ae7304) for some practical examples of closures.

## Application

Create a function `studentFactory` that accepts one argument `course`. This function will return an anonymous function (or arrow function). This anonymous function will accept three aguments `name`, `gender` and `age`. When this anonymous function run, will generate a student represented by an object literal. The object literal should have four properties: `name`, `gender`, `age` and `course`. Use the example above as the structure for your `studentFactory` function.

```js
let generateSeiStudent = studentFactory("sei")

// returns:
//    { name: "denisse", gender: "female", age: 23, course: "sei" }
generateSeiStudent("denisse", "female", 23) 
```

**Note:** If this is confusing, this is ok... this is pretty mind bending. I will explain how this works when we review. For now, give it your best try. :)