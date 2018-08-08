// captures the p tags into the paragraphs variable
let paragraphs = document.getElementsByTagName("p")[0]

// stores all anchors stored within a list item that
//  is within the unordered list
let anchors = document.querySelectorAll("ul li a")

// makes it so that the click handler is set to the function
div.addEventListener("click", myScript)

// creates a function called myScript that will
//  be set as the click handler
function myScript(event) {
  // changes the color to red
  document.querySelector("ul li a").style.color = "red"
  
  // changes all anchor colors to red
  for(let i = 0; i < anchors.length; ++i) {
    // targets one individual anchor and
    //  changes the color to red
    anchors[i].style.color = "red"
  }
}