document.addEventListener("DOMContentLoaded", (event) => {
  let submitButton = document.getElementById("submit-button")
  let textField = document.getElementById("input-important")
  
  submitButton.addEventListener("click", (event) => {
    alert( textField.value )
  })
})








// let title = document.getElementById("nycda-title")
// let helpMessage = document.getElementById("nycda-help-message")
// let lastNycdaClass = document.getElementsByClassName("nycda-class")[3]
// let paragraphs = document.getElementsByTagName("p")
// let redBorder = document.querySelector("input")

// title.innerHTML = "<em>Welcome to NYCDA!</em>"
// helpMessage.innerText = "Ask someone at NYCDA for help!"

// redBorder.style.borderColor = "red"
