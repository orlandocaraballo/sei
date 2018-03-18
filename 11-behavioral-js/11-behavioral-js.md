<img src="html_css_js.png" width="1200px">

# Behavioral Javascript

_Let's put it all together!_

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

### Brief Object Oriented Javascript Intro

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

### Read Examples

```js
document // the html document
```

```js
let content = document.getElementById("content") // returns the element object with an id of content

content.innerHTML // returns the inner html of the element with an id of content
content.innerText // returns the inner text of the "#content" element with html stripped out
```

```js
document.getElementsByClassName("profile-photo") // a nodeList of elements with the class profile-photo
```

```js
let paragraphs = document.getElementsByTagName("p") // a nodeList of paragraph elements
let secondParagraph = paragraphs[2] // the third element in the nodeList of paragraphs

secondParagraph.attributes // returns a namedNodeMap of attributes associated with the third p element
secondParagraph.attributes[0] //  returns the first attribute of the third p element
secondParagraph.attributes["id"] //  returns the id attribute of the third p element
```

### Update Examples

```js
let p = document.getElementsByTagName("p")[0] // stores first paragraph on the page in a variable named p

p.setAttribute("id", "the-paragraph") // changes the class of the paragraph element to "the-paragraph
p.classList.add("loud-text") // adds the class "loud-text" to the p element
p.style.color = "red" // sets inline style element color to red (<p style="color: red;") 
p.innerHTML = "<strong>Strongly worded text!</strong>" // modifies the p tag with the content defined
```

### Create Examples

```js
let p = document.createElement("p") // creates a paragraph element (not seen on the page yet)
let body = document.getElementsByTagName("body")[0] // stores a reference to the html body

p.innerText = "content within p tag" // replaces text within p tag
body.appendChild(p) // appends the paragraph to the end of the body
```

### Delete Examples

```js
let div = document.getElementById("mainContent")

div.remove() // removes div from the html document
```

### Query Selectors

_Allows us to target html elements on the page using an expressive selector syntax_

Types
- `document.querySelector("[selector]")` - gets the first element found matching [selector]
- `document.querySelectorAll("[selector]")` - gets the all elements found matching [selector]

Example

```html
<ul>
  <li class="first-or-last">List item 1</li>
  <li id="li-2">List item 2</li>
  <li class="first-or-last">List item 3</li>
</ul>
```

```js
document.querySelector("li") // returns the first li
document.querySelector("#li-2") // returns the second li

document.querySelectorAll("li") // returns a nodeList of li elements
document.querySelectorAll(".first-or-last") // returns a nodeList of li elements with the class first-or-last
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
let ul = document.getElementTagName("ul")[0] // remember getElementByTagName returns a nodeList
let firstLi = document.getElementTagName("li")[0] // first li element
let thirdLi = document.getElementTagName("li")[0] // first li element

firstLi.parentElement // the parent element of the li (ul)
firstLi.nextElementSibling // get the next element sibling "list item 2"
thirdLi.previousElementSibling // get the previous element sibling "list item 2"
firstLi.nextElementSibling.nextElementSibling // also gets third li element "list item 3"

ul.children // returns an HTMLCollection object
ul.children[2] // returns the second child element
ul.children[2].innerHTML = "orlando" // changes the second child element innerHTML to "orlando"
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
<!-- a typical login form with inputs for username, password and submission -->
<form>
  <input type="text" id="username" name="username" placeholder="Enter your username" />
  <input type="password" id="password" name="password" placeholder="Enter your password" />
  <input type="submit" value="Submit" />
</form>
```

```js
// main.js
document.getElementById("password").value // returns the typed in text within the password field
document.getElementById("username").value = "orlandoc" // changes username to orlandoc
```

Resources
- [MDN: Form](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form)
- [MDN: Input](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)

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

Examples
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
```