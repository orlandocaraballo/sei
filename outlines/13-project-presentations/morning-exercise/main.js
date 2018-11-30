// captures the div tags into the divs variable
let div = document.getElementsByTagName("div")[0];
let header = document.getElementsByTagName("header")[0];

// makes it so that the click handler is set to the function
div.addEventListener("click", onClick);

// creates a function called myScript that will
//  be set as the click handler
function onClick(event) {
  // check if div has large class
  if(div.classList.contains("large")) {
    div.classList.remove("large");
    div.classList.add("small"); 
  } else {
    div.classList.add("large");
    div.classList.remove("small");
  }
}