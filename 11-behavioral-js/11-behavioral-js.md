![HTML CSS JS](html_css_js.png)

# Behavioral Javascript

_Let's put it all together!_

# What is an event?

_An event can be thought of as an abstract representation of something that happens on a web page._

Examples
- Click
- Scroll
- Window Resize
- Hover
- Keypress
- Page load

# Event Handling

_Event handling is the process by which you tell the computer to have certain behaviors happen when an event occurs._

Example
- Open this popup on a button click
- Fadein more content on page scroll
- Zooming in on an image on hover

# Callbacks (again)

```js
// this is not how it is actually coded
// but serves as an example
function click(function(){
  // open popup
})
```

Event listener structure
Usage of anonymous function callbacks
.attachEvent() (outdated)
.addEventListener()

DOM Manipulation


Brief Definition/overview
Review
Content
Padding
Border
Margin

User Input Fields


Fields 
Form
Input
Textarea
Number
Password
Date
Telephone
Retrieving / Changing element data
.value()
.innerText()
.innerHTML()
Examples
Get the title of a form
Changing content of a div
Retrieving a value from form element
Changing values of elements

Selecting Elements
Single
document.getElementsById('tag-name-here')
Multiple
document.getElementsByClassName('class-name-here')
document.getElementsByTagName('tag-name-here')
Looping through element arrays
Differences between multiple and single selectors
Examples
Selecting elements by id
Selecting elements by tag name

Query Selectors


What are these?
Comparison to css syntax
document.querySelector('.class' || '#id' || 'tag-name')
Select first element of the set
document.querySelectorAll
Select all elements of the matching set
When to use


Traversing the DOM
Parents
Children
Siblings

CSS (if time allows)
CSS javascript property
