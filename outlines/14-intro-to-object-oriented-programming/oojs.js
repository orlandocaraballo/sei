let ul = document.querySelector("ul")

/* 
  Below lies the barbaric way of doing things before learning oojs.
*/

// let orlando = {
//   firstName: "Orlando",
//   lastName: "Caraballo",
//   age: 34
// }

// let zach = {
//   firstName: "Zach",
//   lastName: "Morris",
//   age: 18
// }

// let rod = {
//   firstName: "Rod",
//   lastName: "Braga",
//   age: 18
// }

// let orlandoLi = document.createElement("li")
// orlandoLi.innerHTML = `
//   <strong> First name: </strong>
//   <span class="first-name"> ${orlando.firstName} </span><br>
//   <strong> Last name: </strong>
//   <span class="last-name"> ${orlando.lastName} </span><br>
//   <strong> Age: </strong>
//   <span class="age"> ${orlando.age} </span>
// `
// // ul.appendChild(orlandoLi)

// let zachLi = document.createElement("li")
// zachLi.innerHTML = `
//   <strong> First name: </strong>
//   <span class="first-name"> ${zach.firstName} </span><br>
//   <strong> Last name: </strong>
//   <span class="last-name"> ${zach.lastName} </span><br>
//   <strong> Age: </strong>
//   <span class="age"> ${zach.age} </span>
// `
// // ul.appendChild(zachLi)

// let rodLi = document.createElement("li")
// rodLi.innerHTML = `
//   <strong> First name: </strong>
//   <span class="first-name"> ${rod.firstName} </span><br>
//   <strong> Last name: </strong>
//   <span class="last-name"> ${rod.lastName} </span><br>
//   <strong> Age: </strong>
//   <span class="age"> ${rod.age} </span>
// `
// ul.appendChild(rodLi)

// console.log(orlandoLi)

/*
  the civilized way of creating Person objects
*/

// defines the class Person
class Person {
  // sets the constructor values based on 
  constructor(firstName, lastName, age, address) {
    // sets the instance variables to whatever is passed into
    //  constructor
    this.firstName = firstName
    this.lastName = lastName
    this.age = age
    this.address = address
  }

  // creates a new method called fullName that takes
  //  the instance variable firstName and lastName
  //  and then uses those variables to create a string with
  //  both values concatenated together with a space in between
  fullName() {
    return `${this.firstName} ${this.lastName}`
  }
}

// defines the class Student that inherits from Person
class Student extends Person {
  constructor(firstName, lastName, age, address, educationLevel) {
    super(firstName, lastName, age, address)
    this.educationLevel = educationLevel
  }

  // sets the instance variable major to what is passed in
  setMajor(major) {
    this.major = major
  }

  // returns a string that indicates that I am studying
  //  along with the time
  study(time) {
    return `I am studying and it is currently: ${ time }!`
  }

  // gets the person's fullName and their major
  getFullNameAndMajor() {
    return `${ this.fullName() } | ${ this.major }`
  }
}

// creates 3 different Person objects
let personA = new Person("Zombie", "Caraballo", 34)
let personB = new Person("Zach", "Morris", 18)
let personC = new Person("Rod", "Braga", 18)

// stores all three person objects within a people variable
let people = [personA, personB, personC]

// loops thru the people array and creates a new li for each one
//  with the appropriate information on the html document
for(let i = 0; i < people.length; ++i) {
  let li = document.createElement("li")

  // sets the inner html for li to have the first name
  //  last name and age
  li.innerHTML = `
    <strong> First name: </strong>
    <span class="first-name"> ${people[i].firstName} </span><br>
    <strong> Last name: </strong>
    <span class="last-name"> ${people[i].lastName} </span><br>
    <strong> Age: </strong>
    <span class="age"> ${people[i].age} </span>
  `

  // appends the current li to the ul
  ul.appendChild(li)
}

// logs what is returned from the method .study() when "1:20 PM"
//  is passed in
// console.log( zombieStudent.study("1:20 PM") )

// creates a new zombie student
let zombieStudent = new Student("Zombie", "Brown", 2000, "1234 Main St", "PHD MD")

console.log( zombieStudent.address )

// pay attention to what is logged here versus below
console.log(zombieStudent.major)

// sets the instance variable major to physics
zombieStudent.setMajor("physics")

// gets the value of major and logs it
console.log( zombieStudent.major )

// gets the return value of .getFullNameAndMajor() and logs it
console.log( zombieStudent.getFullNameAndMajor() )