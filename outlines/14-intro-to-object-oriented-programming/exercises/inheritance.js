class Rectangle {
  constructor(width, height) {
    this.width = width;
    this.height = height;
  }

  calculateArea() {
    return this.width * this.height;
  }
}

class Animal {
  constructor(name) {
    this.name = name;
  }

  speak() {
    return `${ this.name } speaks.`;
  }
}

class Dog extends Animal {
  constructor(name) {
    super(name);
  }

  speak() {
    return "woof!"
  }
}

const newRectangle = new Rectangle(20, 10);
const pet = new Animal("Rachet");
const pitbull = new Dog("Griffey");

console.log(newRectangle.calculateArea());

console.log(pet.speak());
console.log(pitbull.speak());