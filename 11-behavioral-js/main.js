document.addEventListener("DOMContentLoaded", element => {
  let ul = document.getElementsByTagName("ul")[0]
  let children = ul.children

  for(let i = 0; i < children.length; ++i) {
    let _this = this

    children[i].addEventListener("click", (event) => {
      alert(event.target.innerHTML)
    })
  }

  console.log(ul)
})