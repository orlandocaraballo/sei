"use strict";

// create object literals
let person1 = {
  name: "Orlando C",
  age: 35,
  gender: "male"
};

let person2 = {
  name: "Aron",
  age: 26,
  gender: "male"
};

let person3 = {
  name: "Denisse",
  age: 24,
  gender: "female"
};

// blueprint class for Person
class Person {
  constructor(name, age, gender) {
    this.name = name;
    this.age = age;
    this.gender = gender;
    this.species = "Alien";
  }

  displayInformation() {
    return `${ this.name } - ${ this.age } - ${ this.gender } / ${ this.species }`;
  }
}

class Student extends Person {
  constructor(name, age, gender, course) {
    super(name, age, gender);
    this.course = course;
  }
}

// instance of class / object
let orlando = new Person("Orlando C", 35, "male");
let james = new Person("James", 22, "male");

// an array of Person objects
let people = [orlando, james];

let student = new Student("Jane", 21, "female", "SEI");

// console.log(person1, person2, person3);
// console.log(orlando, james);
// console.log(people);

// console.log(orlando.name, orlando.gender, orlando.age);

// console.log(orlando.displayInformation());
// console.log(james.displayInformation());

console.log(student);