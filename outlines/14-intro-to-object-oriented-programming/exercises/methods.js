class Circle {
  constructor(radius) {
    this.radius = radius;
  }

  calculateDiameter() {
    return this.radius * 2;
  }

  calculateCircumference() {
    return Math.PI * this.calculateDiameter();
  }
}

const circle = new Circle(5);
circle.radius = 100;

console.log(circle.calculateDiameter());
console.log(circle.calculateCircumference());