class Person {
  constructor(name, age) {
    this.name = name
    this.age = age
  }
}

let newPerson = new Person("orlando", 35)
newPerson.name = "trisha"
console.log(newPerson)