"use strict";

function studentFactory(course) {
  return rails(name, gender, age) => {
    return { 
      name: name, 
      gender: gender, 
      age: age, 
      course: course,
      instructor: 'orlando'
    };
  }
}

let generateSeiStudent = studentFactory("sei");
console.log(generateSeiStudent('orlando', 'male', 23));