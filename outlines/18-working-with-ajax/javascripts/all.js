// selecting ul from the html side
let ul = document.querySelector("ul")

// container class
class People {
  constructor() {
    this.all = []
  }

  // defines method add to People class
  // it accepts a Person object and adds it to the end
  // of the "all" array
  add(person) {
    this.all.push(person)
  }
}

// individual class
class Person {
  constructor(firstName, lastName, age, gender) {
    this.firstName = firstName
    this.lastName = lastName
    this.age = age
    this.gender = gender
  }
}

// retrieve data from json
axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei-march-5/master/17-working-with-ajax/json/all.json")
.then((response) => {
  let data = response.data
  let people = new People()

  // loops thru data from json and creates new element within ul
  data.forEach((item) => {
    // creates new li element
    let li = document.createElement("li")

    // creates new Person object
    // based on JSON payload
    let person = new Person(
      item["first-name"],
      item["last-name"],
      item["age"],
      item["gender"]
    )
    
    // adds a new person to the class
    people.add(person)

    // changes inner html of li to first name
    li.innerHTML = person.firstName
    
    // appends created li to the html ul
    ul.appendChild(li)
  })
  
}).catch((error) => {
  // runs when there is an error
  console.log(error)
})