![OO JS](https://codecondo.com/wp-content/uploads/2015/06/20-Resources-on-ES6-for-JavaScript-Developers.jpg)

# Intro to Object Oriented Programming using JS

## Definitions

- __`class`__ - a keyword indicating the beginning of the blueprint definition for an object you are modeling
- __object__ - the digital model of something defined within a `class`
- __method__ - a function that enables behavior relative a class
- __inheritance__ - the act of mirroring behavior defined in a parent class
- __extends__ - the keyword used to inherit from a parent `class`
- __`this`__ - a keyword representing the current object
- __dot syntax__ - the syntax used for executing behavior relative to an object (e.g. `person.age`)

## Basic Class Example

```js
// defines the class "Person"
class Person {
  // runs when the object is first created
  constructor(firstName, lastName, age) {
    // sets the firstName to the firstName parameter
    //  passed into the constructor
    this.firstName = firstName

    // sets the internal last name equal to lastName parameter
    this.lastName = lastName

    // sets the age equal to the age parameter passed in
    this.age = age
  }

  // this is called a method
  // a method is a function that is associated with the class its
  //    defined in
  fullName() {
    // returns the first name and last name with a space in between
    return `${this.firstName} ${this.lastName}`
  }
}

// creates a new Person object and sets it to the person variable
let person = new Person("Orlando", "Caraballo", 34)

// executes the fullName method associated with person
person.fullName() // Orlando Caraballo

// gives you the variable age associated with person 
person.age // 34
```

## Inheritance

```js
// the student class inherits behavior from Person
//  this enables us to make use of all prior defined functions
class Student extends Person {
  // we define a new constructor for Student
  constructor(firstName, lastName, age, education) {
    // we utilize the constructor defined in Person
    // we pass in firstName, lastName and age
    //  into the constructor for Person to DRY
    //  up our code
    super(firstName, lastName, age)

    // we set the education to the highest completed level
    this.education = education
  }
}

let zach = new Student("zach", "morris", 18, "high school")

// because we inherited information from Person
//  we can utilize the function fullName
//  defined in the Person class
console.log( zach.fullName() ) // zach morris
```

## Exercises

### Object Literals

Create an object literal that models each of the following objects with the given properties:

#### A Car 
- brand - `"ford"`
- wheels - `12`
- color - `"red"`

#### A Wizard
- universe - `"Lord of the Rings"`
- powers - `["Regeneration" , "Magic Staff", "Fire Bolt"]`
- age - `106`

#### A Video Game Level 
- levelOfDifficulty - `5`
- isFoggy - `true`
- monstersExist - `true`

### Constructor

1. Create a class `Car` that store the `brand`, `wheels` and `color` properties.
    - Try logging the properties to the console.

### Methods

1. Create a class `Circle` that stores a property `radius`

2. Create a method called `calculateDiameter` that multiplies the `radius` by two. Create a new object instance and log the `calculateDiameter` return value to the console.

3. Create a method called `calculateCircumference` that returns 2 times the radius multiplied by pi. (Use the special property `Math.PI` available in javascript)

4. Using dot notation change the `radius` property value in your object instance. Now log the return value of `calculateCircumference` to the console.

5. Change the `calculateCircumference` name to `circumference` and modify it to be a getter method.

### Inheritance

1. Create a class called `Rectangle` and initialize its constructor with a `height` and `width` property.

    - Give it a method called `calculateArea` that will return its `width` multiplied by its `height` 

2. Create a class called `Animal` with a constructor that accepts a `name` parameter.

    - Give the class a method called `speak` that will return the `name` concatenated with the phrase `" speaks"` at the end

3. Create another class called `Dog` and `extend` it to inherit from the `Animal` class

4. Create a new dog instance and check if you can call the `speak` method on it

    - Override the `speak` method in the `Dog` class so that when a dog speaks it says the `"woof!"`

## Workshop

[Art Gallery](https://drive.google.com/open?id=1j_AFf03OPSk7WR7fIf-FvDr2wgiLN1W3rNCdkCx76EY)

## Resources

- [Dev.to: Introduction to OOP in JS](https://dev.to/nddyandy/introduction-to-oop-in-javascript-ao0)
- [MDN: Class](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes#Super_class_calls_with_super)
- [Medium: Prototypal Inheritance in JS](https://medium.com/@kevincennis/prototypal-inheritance-781bccc97edb)
- [MDN: Introduction to OOP](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object-oriented_JS)