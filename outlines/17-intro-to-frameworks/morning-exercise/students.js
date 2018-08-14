let students = [
  {
    name: "franklin",
    gender: "male",
    famousPhrase: "Lemme ask you this..."
  },
  {
    name: "richard",
    gender: "male",
    famousPhrase: "I did it another way..."
  },
  {
    name: "diana",
    gender: "female",
    famousPhrase: "Seriously!!??"
  }
]

let ul = document.getElementsByTagName("ul")[0]

students.forEach(element => {
  let li = document.createElement("li")

  li.innerHTML = `
    <strong>${ element.name }</strong>
    <em>${ element.gender }</em>
    <p>${ element.famousPhrase }</p>
  `
  
  ul.appendChild(li)
})