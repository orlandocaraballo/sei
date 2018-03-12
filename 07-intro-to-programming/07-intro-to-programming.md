
# Introduction to Programming

## What is programming?

- _The action or process of writing computer programs._

- _The action or process of scheduling something, especially radio or television programs. The action or process of scheduling something, especially radio or television programs._

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

ECMAScript is the name for the standards that dictate what features will be available when JS is implemented on a browser / server side (node js).

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

### Basic Syntax

- Variables
- Data types
- Operators
- Expressions
- Conditionals
- Loops

#### Variables

Assign values to words so you can refer back to them later.

```js
// sets name variable to the value orlando
var name = "orlando"
```

#### let vs var

```js
// also sets name variable to the value orlando
let name = "orlando"
```

#### Data types
- Number
- String
- Boolean
- Object
- Array
  - One dimension
  - Multi-dimensional

#### Operators

##### Mathematical
- + , ++, +=
- -, --, -=
- /, /=
- *, *=

##### Conditional Operators
- ||
- &&

##### Order of operations


#### Expressions

[MDN: Expressions / Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators)

#### Conditionals

- if
- else
- elseif

#### Loops

Simple object syntax
{ key: "value" } pairs

Looping
undefined
NaN

Use of parentheses
Conditionals
while
for
for...in
for… each (arrays)
Looping
Console
