// let's grab our html elements first
let firstNames = document.querySelectorAll(".first-name")
let lastNames = document.querySelectorAll(".last-name")
let ages = document.querySelectorAll(".age")

let ul = document.querySelector("ul")

class Person {
  constructor(firstName, lastName, age) {
    this.firstName = firstName
    this.lastName = lastName
    this.age = age
  }

  get fullName() {
    return `${this.firstName} ${this.lastName}`
  }
}

// what code would I write to fill in the values in the html?
let people = [
  new Person("Martin", "Sosa", 62),
  new Person("Yorvin", "Rosario", 82),
  new Person("Orlando", "C", 9001)
]

for(let i = 0; i < people.length; ++i) {
  let li = document.createElement("li")

  li.setAttribute("id", "li-" + i)
  li.innerHTML = people[i].firstName

  ul.appendChild(li)

  console.log(li)
}

// for(let i = 0; i < people.length; ++i) {
//   firstNames[i].innerText = people[i].firstName
//   lastNames[i].innerHTML = people[i].lastName
//   ages[i].innerHTML = people[i].age
// }