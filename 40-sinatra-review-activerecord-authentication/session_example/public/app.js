let closeButton = document.querySelector(".close-button")
let flashPanel = document.querySelector(".flash")

closeButton.addEventListener("click", event => {
  event.preventDefault()

  flashPanel.classList.add("hide")
})