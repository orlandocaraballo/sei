let sections = document.getElementsByTagName("section")
let firstSection = sections[0]
let secondSection = sections[1]
let thirdSection = sections[2]
let lastSection = sections[3]


window.addEventListener("scroll", event => {
  let section = document.querySelectorAll("section")
  
  if(window.scrollY > 100) {
    firstSection.classList.add("fadeIn")
  }
  
  if(window.scrollY > 800) {
    secondSection.classList.add("fadeIn")
  }

  if(window.scrollY > 1600) {
    thirdSection.classList.add("fadeIn")
  }

  if(window.scrollY > 2400) {
    lastSection.classList.add("fadeIn")
  }
})