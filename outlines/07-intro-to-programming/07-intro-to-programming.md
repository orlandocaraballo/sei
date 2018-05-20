![Hacking](hacking.jpg)
# Introduction to Programming

## What is programming?

- _The action or process of writing computer programs._

- _The action or process of scheduling something, especially radio or television programs._

## Programming relative to daily life

You program several things already in your life:

- Microwave
- DVR
- Yourself
  - Thru your own beliefs
  - How you solve problems (algorithms)

You have been programmed in the past:
- Advertisements
- Music
- Society
- Education
  - I am programming you to be engineers ;-)

## Programming Languages

_Programming languages give you a toolset to define the behavior of a program using words (most of the time English)._

Examples
- Javascript
- Ruby
- Python
- Java
- C++
- C
- C#
- PHP
- R
- etc...

## Keywords

_Words that are used by the compiler / interpreter that do certain things when working within a programming language._

```js
// the word var cannot be used as a variable or function name
var name = "orlando"
```

## Reserved Words

_Words that are used by the compiler / interpreter that cannot be used when defining variables, functions, classes, etc in your programs._

## How are they related?

Just remember that all keywords programming language keywords are most likely also be reserved.

## Logic

![Logic](logic.jpg)

^ Dope rapper!

### What is logic exactly (aside from a rapper)?

_Code that dictates the behavior of your programs / applications_

Understanding programming logic allows you to:
- Problem solve 
- Break problems down
- Solve smaller problems
- Write code that flows more naturally

__How would you make a peanut butter and jelly sandwich?__

## Javascript

### What is it?

_A language used on the browser for the purposes of adding behavior to a webpage._


### Yo dawg, I heard you like ECMAScript

ECMAScript is the name for the standards that dictate what features will be available when JS is implemented on a browser or server side (node.js).

- ECMAScript
- ECMAScript2015
- ECMAScript2016
- ECMAScript2017
- ES.Next

[Wikipedia: ECMAScript](https://en.wikipedia.org/wiki/ECMAScript)

### Running JS Code

#### Embed

```html
<!-- html code -->
<script>
  alert("Hello");
</script>
```

#### File

```html
<!-- html code -->
<script src="main.js></script>
```

```js
// js code
alert("Hello!");
```

#### Inline

```html
<!-- 
  AVOID THIS AT ALL COSTS,
  YES EVEN IF YOU FIND EXAMPLES ONLINE.

  IT IS CONFUSING, DIFFICULT TO DEBUG and OUTDATED
-->
<button onClick="alert('hello');">
```

---

#### Exercise

- Create a script using JS that will alert a user with “Welcome to NYCDA, This is your first Javascript!”

---

### Basic Syntax

- Variables
- Data types
- Operators
- Expressions
- Conditionals
- Loops

#### Variables

Assign values to words so you can refer back to them later.

#### var

```js
// sets name variable to the value orlando
// avoid using var
var name = "orlando"
```

#### let

```js
// also sets name variable to the value orlando
// prefer let over var
let name = "orlando"
```
#### const

```js
// the value cannot change
const name = "denisse"
```

#### Data types

- Allow you to assign a classification to a literal (fixed value).
- Data types are automatically assigned based on what javascript thinks the type should be unlike Java, C++, C


##### Number

```js
4
5
-6
7.0
```

##### String

###### One line
```js
"Orlando"
"New York Code & Design Academy"
```

###### Template Literal
```js
`
A bunch of text
that I normally would
struggle to write over many lines
`

let name = "Orlando"
`my name is ${name}`
```

##### Boolean

```js
true
false
```

---
#### Exercise

- Create a string variable called test and give it a value of your name
- Create another variable called myAge and give it a value of your age 
- Add those two together and see what happens! Do you get a string or a number back? How about if we add a number and a boolean?
- What data type could be used to store both name and age in one variable?

---

##### Array

```js
// one dimensional array
let listOfFood = [
  "carrots",
  "bacon",
  "milk",
  "parsley"
]

food[3] // parsley

// multidimensional array

let ticTacToe = [
  ["x", "o", "x"],
  ["x", "x", "o"],
  ["o", "o", "x"]
]

ticTacToe[1][2] // x (second row, third column)
```

---
#### Exercise

- Create an array with the name of 5 of your classmates (If you don’t remember than ask!)
- Access the classmate in the 4th position of your array

Given the following multidimensional array: 
```js
[
  ["hello", "goodbye", "food"],
  ["something", "else", "here"],
  ["beans", "fruit", "veggies"]
]
```
Access the array and return the element that contains ‘beans’

---

##### Object Literals

```js
let person = {
  firstName : "Orlando",
  lastName: "Caraballo",
  age: 34,
  favoriteMovies: [
    "Interstellar",
    "The Matrix",
    "Eternal Sunshine of a Spotless Mind"
  ]
}

person.firstName // Orlando
person["lastName"] // Caraballo
person.favoriteMovies[1] // The Matrix
person["age"] = 24 // age is reset to 24
person["ethnicity"] = "dominican" // adds a new key 'ethnicity' with value 'dominican'
```
---

#### Exercise

- Create an object with `name` and `eyeColor` properties. Change the eye color to `brown`. Now add a `hairColor` property and change it to `"blonde"`

- Create a object literal with your top 3 movies using the keys: `topMovieOne`, `topMovieTwo`, `topMovieThree`. 
- Assign some movie values to your keys!
- Access your object literal and print out in the console the following string:
  - My favorite movies are `topMovieOne` and `topMovieTwo`, but I really enjoy `topMovieThree`.
---

### Operators

#### Mathematical

##### Plus
```js
// addition
5 + 1 // 6

// concatenation = combining strings together
"orlando " + "caraballo" // "orlando caraballo"

// double plus adds 1 to itself
let number = 1
number++
number // 2
```

```js
let number = 1
// plus equals adds the number on the right hand side
// to the value of the variable on the left hand side and sets it equal to the variable
number += 10
number // 11
```

##### Minus

```js
// subtraction
5 - 1 // 4

// double minus subtracts 1 from itself
let number = 1
number-- 
number // 0
```

```js
let number = 0
// plus equals adds the number on the right hand side
// to the value of the variable on the left hand side and sets it equal to the variable
number -= 10
number  // -10
```

##### Star

```js
// multiplication
5 * 1 // 5

// double star calculates base to exponent power
// the example below is 2 to the power of 3 which is 8
2 ** 3 // 8

// star equals multiplies the number on the right hand side
// to the value of the variable on the left hand side and sets it equal to the variable
let number = 10 // 11
number *= 2
number // 20
```

##### Slash

```js
// division
10 / 2 // 5

// division equals divides the variable on the left hand side
// by the value on the right hand side
// and sets this new value to the variable
let number = 10
number /= 2
number // 5
```

##### Modulo

```js
// modulo
// gets the remainder left over from dividing the number on the left hand side by the number on the right hand side
10 % 3 // 1
```

---
#### Exercise

- Create a variable called `mathOne` and give it a value of `20`
- Create another one called `mathTwo` and give it a value of `3`.  
- Create a new variable called `mathSum` that will be the sum of the first variables. 
- Create another variabled called `mathProduct` and this will be the product of the first two variables.
- Print `mathSum` and `mathProduct` to your developer console.
---

#### Conditional Operators

```js
let number = 5

// equality
number == 10 // false
number == "5" // true

// strict equality
// this checks for whether 
number === "5" // false

// greater than
number > 2 // true

// less than
number < 1 // false

// or
number > 2 || number < 1 // true

// and
number > 2 && number < 1 // false
```

#### Order of operations

[MDN: Operator Precedence](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence)

### Expressions

An expression is any piece of code that evaluates to a single value.

```js
5 + 1 // expression evaluates to 6

let number = 8
number * 2 // expression evaluates to 16

let school = "NYCDA"
school + " is where we learn" // expression evaluates to "NYCDA is where we learn"
```

[MDN: Expressions / Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators)

### Conditionals

#### if statement
```js
let number = 10

// if number is less than 11 run code inside the curly braces
if(number < 11) {
  // run the code written here
}
```

#### else if statement
```js
let number = 10

// number is not less than 3...
//  but is greater than 5
if(number < 3) {
  // will not run code written here
} else if(number > 5) {
  // will run code written here
}
```

#### else statement

```js
let number = 10

// number is not less than 3...
//  is not greater than 1000
//  therefore, else will account for 
//  all other situations
if(number < 3) {
  // will not run code written here
} else if(number > 1000) {
  // will not run code written here
} else {
  // will run code written here
}
```

```js
let number = 10

// you can combine conditionals with conditional operators
if(number < 8 && number > 0) {
  // will run code written here
}
```

#### Special Reserved Words

##### Undefined
```js
// represents when a variable or function
//  is not defined
undefined
```

##### Not a number
```js
// when an expression evaluates to something that is not a number
NaN
```

#### Special Output Commands

```js
let name = "orlando"

// logs a value to the js console
console.log(name + " is my name")

// displays this as a popup
alert(name + " is my name, programming is my game")
```

#### Loops

##### for

```js
// for loop
for(let i = 0; i < 10; i++) {
  // run code written here 10 times
  console.log("Hello Class")
}

// can be used to loop thru an array
let array = [14, 35, -26, 44]

for(let i = 0; i < array.length; i++) {
  // displays the current value within array
  console.log(array[i]) // 14, 35, etc..
}
```
##### for... in

```js
let table = {
  height: "4ft",
  width: "3ft",
  depth: "2ft"
}

// allows you to loop over object properties
for(let dimension in table) {
  console.log(table[dimension] + " ") //  4ft 3ft 2ft
}
```

##### while

```js
let number = 1

// will loop until the conditional becomes true
while(number <= 15) {
  console.log("JS is cool") // will display this 15 times
  number++
}
/*
  This can be used to loop over arrays but for loops are more clear
*/
```
---
#### Exercise

Create a for loop that will print out pluses starting with 10 of them down to one. 

Example: 

```js
++++++++++
+++++++++
++++++++
+++++++
++++++
+++++
++++
+++
++
+
```

---

#### Exercise

- Write a conditional that checks if a variable is less than 10. If it is, alert the user that their variable is less than 10. If it is not, let the user know what the variable was and that it was greater than 10.

- Write a program that evaluates two things: 
temperature and the status of an air conditioner (on or off). 
If the temperature is warmer than 80, and the air conditioner is off, log "turn the ac on!".
 If the temperature is warmer than 80 and the ac is on, log "this thing is broken!". 
If the temperature is colder than 60 and the air conditioner is on, log "brrr, turn this thing off".
If the temperature is cooler than 80, and the ac is off, log "not worth the electricity. leave it off." 

---

## Workshop

[Javascript Challenges](https://drive.google.com/open?id=1yITFUTNmf-sSWMMDYIMvRpe3Xd0c5EJK_BR1v4c7Bx0)
