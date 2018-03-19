<img src="html_css_js.png" width="1200px">

# Behavioral Javascript

_Let's put it all together!_

## Brief Object Oriented Javascript Intro

_Object oriented programming has you creating behavior and variables relative to an object._

```js
// assume Car is defined elsewhere
let car = new Car()

// this would represent data relative to the car
car.wheels // 4
car.topSpeed // "130 mph"
car.color // "silver"
car.make // "Toyota"
car.model // "Corolla"

// this would invoke behavior relative to the car
car.drive() // this would drive the car
car.stop() // this would stop the car
```

## DOM

_Stands for Document **Object** Model and is the primary way in which Javascript interfaces with html elements on an html document._

There are four major things you can do to html elements by interacting with the DOM:
- **C**reate
- **R**ead
- **U**pdate
- **D**elete

### DOM Data Types
- document - represents the entire docment
- element - represents an html element on a page
- nodeList - represents an array of elements returned by functions such as `document.getElementsByTagName()`
- attribute - represents an html attribute
- namedNodeMap - represents an array-like object of attribute objects

### Read Examples

```js
document // the html document
```

```js
// returns the element object with an id of content
let content = document.getElementById("content") 

// returns the inner html of the element with an id of content
content.innerHTML

 // returns the inner text of the "#content" element 
 // with html stripped out
content.innerText
```

```js
 // a nodeList of elements with the class profile-photo
document.getElementsByClassName("profile-photo")
```

```js
// a nodeList of paragraph elements
let paragraphs = document.getElementsByTagName("p")

// the third element in the nodeList of paragraphs
let secondParagraph = paragraphs[2] 

// returns a namedNodeMap of attributes associated
// with the third p element
secondParagraph.attributes

//  returns the first attribute of the third p element
secondParagraph.attributes[0]

//  returns the id attribute of the third p element
secondParagraph.attributes["id"]
```

### Update Examples

```js
// stores first paragraph on the page in a variable named p
let p = document.getElementsByTagName("p")[0]

// changes the class of the paragraph element to "the-paragraph
p.setAttribute("id", "the-paragraph") 

// adds the class "loud-text" to the p element
p.classList.add("loud-text")

// sets inline style element color to red (<p style="color: red;")
p.style.color = "red" 

// modifies the p tag with the content defined
p.innerHTML = "<strong>Strongly worded text!</strong>" 
```

### Create Examples

```js
// creates a paragraph element (not seen on the page yet)
let p = document.createElement("p")

// stores a reference to the html body
let body = document.getElementsByTagName("body")[0] 

 // replaces text within p tag
p.innerText = "content within p tag"

// appends the paragraph to the end of the body
body.appendChild(p) 
```

### Delete Examples

```js
let div = document.getElementById("mainContent")

// removes div from the html document
div.remove()
```

### Exercises
Use this [starter code](https://codepen.io/anon/pen/RLLbeJ)


1. Do the following in javascript:
    - Target the element with the id of `nycda-title`.
    - Change the value of the text inside the element to say `"Welcome to NYCDA"`
    - Now grab the element with id of `nycda-help-message` and change the text inside to `"Ask people in NYCDA for help if you're struggling"`

2. Do the following in javascript:
    - Target all the elements with the class of `nycda-class`
    - Log the last element from that class collection in your developer console

3. Do the following in javascript:
    - Target all the paragraph tags that exist in your document
    - Log the second paragraph element to your developer console


### Query Selectors

_Allows us to target html elements on the page using an expressive selector syntax_

Types
- `document.querySelector("[selector]")` - gets the first element found matching [selector]
- `document.querySelectorAll("[selector]")` - gets all elements found matching [selector]

Example

```html
<ul>
  <li class="first-or-last">List item 1</li>
  <li id="li-2">List item 2</li>
  <li class="first-or-last">List item 3</li>
</ul>
```

```js
 // returns the first li
document.querySelector("li")

// returns the second li
document.querySelector("#li-2")

// returns a nodeList of li elements
document.querySelectorAll("li")

// returns a nodeList of li elements with the class first-or-last
document.querySelectorAll(".first-or-last")
```

Resources
- [MDN: Query Selector](https://developer.mozilla.org/en-US/docs/Web/API/Element/querySelector)
- [MDN: Query Selector All](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelectorAll)

### Traversal

Some terms
- parents - the html element that encapsulates an html element
- children - html elements nested directly within another html element
- siblings - html elements nested side by side with the current element's parent

```html
<!-- index.html -->

<!-- parent -->
<ul>
  <!-- these are the children -->

  <!-- this it the first child -->
  <li>list item 1</li>

  <!-- this it the second child -->
  <li>list item 2</li>

  <!-- this it the third child -->
  <li>list item 3</li>
</ul>
```

```css
/* main.css */

ul li:nth-child(1) {
  /* targets the first child */
}

ul li:nth-child(2) {
  /* targets the second child */
}

ul li:nth-child(3) {
  /* targets the third child */
}
```

```js
// main.js

// remember getElementByTagName returns a nodeList
let ul = document.getElementTagName("ul")[0]

// first li element
let firstLi = document.getElementTagName("li")[0]

// third li element
let thirdLi = document.getElementTagName("li")[2]

// the parent element of the li (ul)
firstLi.parentElement

// get the next element sibling "list item 2"
firstLi.nextElementSibling

// get the previous element sibling "list item 2"
thirdLi.previousElementSibling

// also gets third li element "list item 3"
firstLi.nextElementSibling.nextElementSibling

// returns an HTMLCollection object
ul.children

// returns the second child element
ul.children[2]

// changes the second child element innerHTML to "orlando"
ul.children[2].innerHTML = "orlando"
```

## Forms

### Definitions

- form - an html element that allow a user to input information
- field - an html element nested within a form that represents a type of input

Types of Input Fields
- text
- password
- radio
- checkbox
- telephone
- textarea
- submit

Example
```html
<!-- index.html -->
<!-- 
  a typical login form with inputs for username, 
  password and submission
-->
<form>
  <input type="text" id="username" name="username" placeholder="Enter your username" />
  <input type="password" id="password" name="password" placeholder="Enter your password" />
  <input type="submit" value="Submit" />
</form>
```

```js
// main.js

// returns the typed in text within the password field
document.getElementById("password").value 

// changes username to orlandoc
document.getElementById("username").value = "orlandoc"
```

Resources
- [MDN: Form](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form)
- [MDN: Input](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)

### Exercise
Use [starter code](https://codepen.io/anon/pen/RLLbeJ)


Do the following in javascript:
  - Target all input fields on the html page without using `getElementsByTagName()`
  - Change the border color to `red`

## Events

### What is an event?

_An event can be thought of as an abstract representation of something that happens on a web page._

Examples
- Click
- Scroll
- Window Resize
- Hover
- Keypress
- Page load

### Event Handling

_Event handling is the process by which you tell the computer to activate certain behavior when an event occurs._

Example
- Open this popup on a button click
- Fadein more content on page scroll
- Zooming in on an image on hover

### Callbacks (again)

Callbacks are very commonly used when asocciating behavior to events that occur on a webpage like so:

```js
// this is not the actual function name
// but serves as an example
function onClick(function(event){
  // open popup
})
```

There is also a shorthand form of a anonymous function called a _lambda expression_ or an _arrow function_.

```js
// similar to above with shorter syntax
function onClick((event) => {
  // open popup
})
```

Lambda expressions are very similar to anonymous functions in javascrpt except that they have different ways of setting the `this` keyword. We will talk more about `this` when we talk about Object Oriented Programming.

[MDN: Arrow Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

### Event Listeners

_An event listener is a function that listens for when an event fires on a webpage and does something._

```js
// this event listener "listens" to see when the content on the page
// is finished loading then alerts the user
document.addEventListener("DOMContentLoaded", (event) => {
  alert("The page is loaded!")
});
```
#### Syntax

```js
// [element] = the element you want to add a listener to
// [event name] = the name of the event you are targetting
// [function] = the name of the function or an anonymous function
[element].addEventListener("[event name]", [function])
```

You may see a more outdated form of writing these listeners

```js
// do not use attachEvent, it is non-standard and only works in
// order versions of Internet Explorer
document.attachEvent("onClick", function() {
  alert("The page is loaded!")
});
```

Example
```html
<!-- index.html -->
<p id="paragraph">
  <a id="link-1" href="#clickable-link-1">Click Me 1!</a>
  <a id="link-2" href="#clickable-link-2">Click Me 2!</a>
  <a id="link-3" href="#clickable-link-3">Click Me 3!</a>
</p>
```

```js
// main.js

// this code only runs when the document is finished loading
document.addEventListener("DOMContentLoaded", (event) => {
  let firstLink = document.getElementById("link-1")
  let paragraph = document.getElementById("paragraph")

  // adds an event listener to the anchor
  firstLink.addEventListener("click", (event) => {
    // event represents the event that just took place
    // prevents default behavior of anchors which is to jump to a different page
    event.preventDefault()

    // this will occur when the button above is clicked
    alert("I clicked this button")
  })

  // loops thru the last two anchors
  for(let i = 1; i < paragraph.children.length - 1; ++i) {
    // adds event listeners to the last two anchors
    paragraph.children[i].addEventListener("click", (event) => {
      // gets element that was clicked on
      let currentElement = element.target

      // prevents default anchor behavior
      event.preventDefault()

      // alerts the content of the current anchor
      alert(currentElement.innerHTML)
    })
  }
})
```

Resources
- [MDN: Intro to Events](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events)
- [MDN: Event Reference](https://developer.mozilla.org/en-US/docs/Web/Events)

### Exercise

Use [starter code](https://codepen.io/anon/pen/RLLbeJ)

Write JS to handle when a person clicks on element with the id of `submit-button` to grab the value of the input field with the the id of `input-important`. Make sure you type something in the input field before you run your testing!

### Example Using Animation

[Animation Demo](animation.html)

### Workshop

[Secion Transitions](https://drive.google.com/open?id=1K6d971_4BL-JvFb4B8RwsMGhib7_L9qjchE8gqpawcY)

---

### Bonus Challenges

#### On Keypress

Create an HTML page with javascript that listens for a `keypress` event. When the user presses a key, the text of the `h1` should show the value of the key they have pressed.

Example: If the user presses `J`, the text inside the `h1` should display `J`.

#### Validation

Create an html page with a form. The form should include inputs for a `username`, `email`, and `password` as well as a `submit` button.

In a Javascript file, write code that does the following things when clicking the `submit` button:
- checks that the password is `"12345678"`
- checks that the username contains at least one number

Your page should also include an `h1` tag. If the information in the form is correct, have Javascript change the text in the `h1` to `Correct` otherwise change the text to `Incorrect`.
