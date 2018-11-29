"use strict";

// define and target our elements
let anchorButton = document.querySelector("a");
let buttons = document.querySelectorAll("button");
let changeColorButton = document.querySelector("#change-color");

anchorButton.addEventListener("click", (event) => {
  // included to prevent anchor from reloading page
  event.preventDefault();
  
  console.log("sdfsdfsd");
});

changeColorButton.addEventListener("click", (event) =>{
  let paragraph = document.querySelector("p");
  paragraph.style.color = "red";
});

// assign an event listener to more than one element
for(let i = 0; i < buttons.length - 1;++i) {
  buttons[i].addEventListener("click", (event) => {
    // alert("Clicked one of the buttons");
    let paragraph = document.createElement("p");
    paragraph.innerHTML = "skldfjksldjfkljsd lskdjfklsdjfsdf sdf SVGDefsElementsdf SVGDefsElementsdfsd";
    document.body.appendChild(paragraph);
  })
}

// we can condense this code into a for loop as above
// buttons[0].addEventListener("click", (event) => {
//   alert("Clicked one of the buttons");
// })

// buttons[1].addEventListener("click", (event) => {
//   alert("Clicked one of the buttons");
// })