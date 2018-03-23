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

## Exercises

### Object Literals

Create an object literal that models each of the following objects with the given properties:

#### A Car 
- brand - `"ford"`
- numOfWheels - `12`
- color - `"red"`

#### A Wizard
- universe - `"Lord of the Rings"`
- powers - `["Regeneration" , "Magic Staff", "Fire Bolt"]`
- age - `106`

#### A Video Game Level 
- levelOfDifficulty - `5`
- isFoggy - `true`
- monstersExist - `true`


### Constructors

Take one of the following objects you created above and replicate it using a generic constructor function. 
Instantiate a object literal based off your constructor.  
Ex : Wizard Gandalf or Video Game Level Lava Map


Using dot notation change a property value in your object instance.
Ex : Wizard Gandalf has age 78 and is changed to age 108


Give your object constructor a useful function, have one of your instance call your new method
Ex. Wizard can do Fire Attack ( gandalf.fireAttack(); ) 

### Classes

1. Create a class called `Rectangle` and initialize its constructor with a `height` and `width` property.

    - Give it a method called `calcArea` that will return its `width` multiplied by its `height` 

2. Create a class called `Animal` with a constructor that accepts a `name` parameter.

    - Give the class a method called `speak` that will return the `name` concatenated with the word speaks at the end

3. Create another class called Dog and extend it to inherit from the Animal class

4. Create a new dog instance and check if you can call the speak method on it 

## Workshop

[Art Gallery](https://docs.google.com/document/d/1Eeh8Qw1Km44_XwrL8ipcemWfYXzEe3mhJ6SdIBqrusA/edit?usp=sharing)

## Resources

- [Dev.to: Introduction to OOP in JS](https://dev.to/nddyandy/introduction-to-oop-in-javascript-ao0)
- [MDN: Class](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes#Super_class_calls_with_super)
- [Medium: Prototypal Inheritance in JS](https://medium.com/@kevincennis/prototypal-inheritance-781bccc97edb)
- [MDN: Introduction to OOP](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object-oriented_JS)