![Clean](clean.jpg)

# Debugging and Clean Codez

_"It's time to take out the garbage!" (intended to be read like a 90s action hero)_

## Debugging definition

_Debugging is the process of finding errors in your code and then rectifying them_

## How to debug

1. If you are the code author
    - Double check that you have attempted to use [problem solving techniques](../09-problem-solving-algorithms-js/09-problem-solving-algorithms-js.md) to create your solution
    - If not move to step 2
2. Identify the type of error it is
3. Strategize on a solution
4. Execute your strategy

## Types of errors

The most common errors you will see when programming are:

- Syntax errors
- Runtime errors
- Logic errors (bugs)
- Race condition (well sort of..)

## Syntax error

_The error you recieve when your code is not able to be understood by the programming language_

```js
function welcome ToClass() {
  // other code here
} // SyntaxError: Unexpected token, expected (
```

## Runtime error

_An error that occurs during execution phase of a program_

```js
function subtract(num1, num2) {
  return num1 - num2
} // ReferenceError: subtact is not defined

subtact(10, 9)
```

## Logic error

_An error that occurs not because your code is written incorrectly, but because it doesn't do what you want it to_

```js
let array = ["stuff", "to", "put", "in", "a", "list"]

// I am looping thru the array starting at 1 instead of 0
for(let i = 1; i < array.length ;++i){
  console.log(array[i])
} // to, put, in, a, list

// whoops D-:
```

[MDN: Error - Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors)

## Exceptions

_Exceptions are unexpected behavior that can not be accounted for under normal circumstances_

[MDN: Try...Catch...Finally](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/try...catch)

## Race condition

_A race condition is what happens when two competing parts of a program are running simultaneously and data relevant to one part is not available because the other part has not finished executing_

<img src="wat.jpg" width="1000px">

### Scenario

_You have an html document and a js file linked together. You want to target a paragraph tag on the page so you write the code to do so but you notice something. However, your javascript keeps hitting a runtime error stating that the html element does not exist. It happens sometimes, but not other times. You have checked your code several times over and you are certain the code looks correct._

__This is more than likely a race condition between the html and the javascript code__

### What exactly is happening here?

The html has not finished drawing the html element in question and the javascript is looking for an element that does not exist yet.

### What is the solution?

There are various approaches:
- Put your javascript at the end of the html document

```html
<html>
  <head>
    <!-- putting it here may cause the race condition -->
  <head>
  <body>
    <!-- your html element code goes here -->
    <script type="text/javscript" src="main.js"></script>
  <body>
</html>
```

- Wrap all your javascript code in a function that fires when the document is loaded

```js
// this callback executes only when the entire page has finished loading
document.addEventListener("DOMContentLoaded", function(event) {
  // rest of code goes here
});
```

## Tools

- Stack Trace
- Console
- Error messages
- Debugger

[MDN: Debugging Javascript](https://developer.mozilla.org/en-US/docs/Mozilla/Debugging/Debugging_JavaScript)

[Chrome: Devtools](https://developers.google.com/web/tools/chrome-devtools/)

## Techniques

- Understanding the error
- Comment code to find error source
- Remove or comment code to find error code

## How to Google

1. [Understand the Problem](../09-problem-solving-algorithms-js/09-problem-solving-algorithms-js.md)
2. Search for the keywords associated with your problem
3. Identify if this article / code snippet is applicable
    - If not then go back to step 2
4. Understand the solution
5. Execute the solution
    - If it is a code snippet, type it out in your own style

## Stackoverflow

- Understand the strategy behind the solution
- Ask yourself: What can you learn from their code?
- __Copying and pasting will hinder your learning__

__Note: Do not abuse this tool to just find answers, this will not help you learn__

## Clean Code

<img src="transform.gif" width="1000">

_Writing clean, organized and elegant code will elevate your game to the next level_


### How can I make it sexy?
- Understand standards
- Let your code breathe
- Name your variables appropriately
- Miantain consistency
- Prefer readability
- Clean up throughout the process
- Follow a guide

### Understand Standards

_Read through the best practices and standards set forth by the community._

Clean JS
```js
// this reads very well
function multiplyName(name, numberOfTimes) {
  let output = ""

  for(let i = 0; i < numberOfTimes; ++i) {
    output += name
  }

  return output
}

multiplyName("orlando", 3) // orlandoorlandoorlando
```

Ruby style is a little different
```ruby
# this reads very well
def multiply_name(name, number)
  output = ""

  number.times do
    output += name
  end

  return output
end

multiply_name("orlando", 3) # orlandoorlandoorlando
```

This is considered better
```ruby
# this is much more concise and readable
def multiply_name(name, number_of_times)
  name * number_of_times
end

multiply_name "orlando", 3
```

### Let your code breathe

```js
function loopThruArrayAndDoStuff(array) {
  let randomVariable=10
  let otherRandomVariable=1000
  let lastVariable=-45
  for(let i = 0; i < array.length; ++i) {lastVariable+=otherRandomVariable}
  return lastVariable
}

loopThruArrayAndDoStuff([10, 9, 40, "hello", "goodbye"])
```

### Name your variables / functions contextually

```js
// why?
function f(x) {
  let s = 0
  
  for(let i = 0; i < x ; ++i) {
    s += x[i]
  }

  return s
}

f([10,5,2]) // 17
```

### Maintain consistency

__I prefer you pick a style and stick to it than for you to mix and match styles__

```js
// both are fine, just pick one and stick to it
function oneWay(argument1, argument2){
  // code
}

function anotherWay ( argument1 , argument2 )
{
  // code
}
```
---

### __In a group, establish coding style early__

---

### Prefer readability over cool shit

```js
// nice flex bruh
function coolShit(gender, name) {
  return `${gender == "male" ? "His" : "Her"} majesty ${name}!`
}

// this is more readable
function coolShit(gender, name) {
  let prefix = gender == "male" ? "His" : "Her"

  return `${prefix} majesty ${name}!`
}

// this is even more readable
function coolShit(gender, name) {
  let prefix = ""

  if(gender == "male") {
    prefix += "His"
  } else {
    prefix += "Her"
  }

  return `${prefix} majesty ${name}!`
}
```

### Clean up throughout the process

_Very much like cleaning your house / apt_

- Leaving it for last will frustrate you
- You can prevent bugs because your code is neat and organized
- When you are stuck, cleaning up will activate your creative brain
- You build momentum because you are always making progress (shaving ice)
- This will add to your muscle memory

### Follow a guide

[MDN: Coding Style](https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Coding_Style)

## Workshop

["We Need Bug Spray!"](https://drive.google.com/open?id=1xCfp0ybglr7qwdg-nQT4RFyTICYmTazjulISm7BqkV8)