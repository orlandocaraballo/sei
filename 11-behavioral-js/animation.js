document.addEventListener("DOMContentLoaded", (event) => {
  let ul = document.getElementsByTagName("ul")[0]
  let children = ul.children

  for(let i = 0; i < children.length; ++i) {
    children[i].addEventListener("click", (clickEvent) => {
      clickEvent.target.classList.toggle("fadeOut")
    })
  }
})