"use strict";

function studentFactory(course) {

  function whatever(name, gender, age) {
    let newObject = {
      name: name,
      gender: gender,
      age: age,
      course: course
    };

    return newObject;
  }

  return whatever;
}

let generateSeiStudent = studentFactory("wd100");
console.log(generateSeiStudent('orlando', 'male', 23));