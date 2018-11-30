// captures the div tags into the divs variable
let divs = document.getElementsByTagName("div")[0]

// makes it so that the click handler is set to the function
divs.addEventListener("click", myScript)

// creates a function called myScript that will
//  be set as the click handler
function myScript(event) {
  divs.classList.add("large")
}