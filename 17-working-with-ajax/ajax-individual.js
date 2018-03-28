// container class
class People {
  constructor() {
    this.all = []
  }

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

// selecting ul from the html side
let ul = document.querySelector("ul")
let people = new People()

// retrieve data from json
axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei-march-5/master/17-working-with-ajax/person-1.json")
.then((response) => {
  let data = response.data
  let person = new Person(
    data["first-name"],
    data["last-name"],
    data["age"],
    data["gender"]
  )

  people.add(person)  
}).catch((error) => {
  console.log(error)
})

// 