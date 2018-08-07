// these function calls below are similar to the ones
//  that start at line 8
// let firstLi = document.getElementById("first-li")
// let listItemsByClass = document.getElementsByClassName("list-items")
// let listItems = document.getElementsByTagName("li")

// same as document.getElementById("first-li")
let firstLi = document.querySelector("#first-li")

// same as document.getElementByClassName("list-items")
let listItemsByClass = document.querySelectorAll(".list-items")

// same as document.getElementsByTagName("li")
let listItems = document.querySelectorAll("li")

// same as document.getElementsByTagName("ul")
let ul = document.querySelector("ul")

// gets the submit button
let submitButton = document.querySelector("input[type=submit]")

// executes the anonymous function when clicking on the submit button
submitButton.addEventListener("click", (event) => {
  // prevents the default behavior when clicking on the submit button
  //  in this case it prevents the submit button from
  //  going to the next page
  event.preventDefault()
  
  // writes "clicked to the console"
  console.log("clicked")
})

// executes the onMouseEnter function when hovering over the submit button
submitButton.addEventListener("mouseenter", onMouseEnter)

// executes the onMouseEnter function when hovering over
//  the first list item
firstLi.addEventListener("mouseenter", onMouseEnter)

// submits the click button
function submitClick(event) {
  event.preventDefault()

  // writes "I have clicked the button" when clicking on the submit
  //  button
  console.log("I have clicked the button")
}

function onMouseEnter(event) {
  // sets text color of the element that fired the mouse event to blue
  event.target.style.color = "blue"
}

// stores a reference to the body element in the body variable
let body = document.getElementsByTagName("body")[0]

// creates a new h1 and stores a reference in the h1 variable
let h1 = document.createElement("h1")

// adds a class "with-border"
h1.classList.add("with-border")

// changes the innerText to "orlando"
h1.innerText = "orlando"

// adds h1 to the body, which draws it onto the screen
body.appendChild(h1)

// uncomment this to experiment with removing list items from the page
// for(let i = 0; i < listItems.length ; i++) {
//   listItems[i].remove()
// }

// adds the class "red" to the first list item
// firstLi.classList.add("red")

// loops thru all the list items and displays the innerText
// for(let i = 0; i < listItems.length ; i++) {
//   console.log( listItems[i].innerText )
// }