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

  get(name) {
    return this.all.find((element) => {
      return element.firstName == name
    })
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

// selecting ul from the html side
let ul = document.querySelector("ul")
let people = new People()

// retrieve data from hosted person-1 json file
axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei-march-5/master/17-working-with-ajax/json/person-1.json")
.then((response) => {
  // creates new li element
  let li = document.createElement("li")
  let data = response.data

  // creates new Person object
  // based on JSON payload
  let orlando = new Person(
    data["first-name"],
    data["last-name"],
    data["age"],
    data["gender"]
  )

  // adds new Person object
  people.add(orlando)

  // changes inner html of li to first name
  li.innerHTML = orlando.firstName
    
  // appends created li to the html ul
  ul.appendChild(li)
}).catch((error) => {
  console.log(error)
})

// retrieve data from hosted person-2 json file
axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei-march-5/master/17-working-with-ajax/json/person-2.json")
.then((response) => {
  // creates new li element
  let li = document.createElement("li")
  let data = response.data

  // creates new Person object
  // based on JSON payload
  let trish = new Person(
    data["first-name"],
    data["last-name"],
    data["age"],
    data["gender"]
  )

  // adds new Person object
  people.add(trish)

  // changes inner html of li to first name
  li.innerHTML = trish.firstName
    
  // appends created li to the html ul
  ul.appendChild(li)
}).catch((error) => {
  console.log(error)
})

// retrieve data from hosted person-3 json file
axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei-march-5/master/17-working-with-ajax/json/person-3.json")
.then((response) => {
  // creates new li element
  let li = document.createElement("li")
  let data = response.data

  // creates new Person object
  // based on JSON payload
  let denisse = new Person(
    data["first-name"],
    data["last-name"],
    data["age"],
    data["gender"]
  )

  // adds new Person object
  people.add(denisse)

  // changes inner html of li to first name
  li.innerHTML = denisse.firstName
    
  // appends created li to the html ul
  ul.appendChild(li)
}).catch((error) => {
  console.log(error)
})

console.log(people.get("orlando"))