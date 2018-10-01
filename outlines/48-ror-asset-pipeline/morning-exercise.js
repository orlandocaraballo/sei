"use strict";

function zip(array1, array2) {
  let array = [];

  for(let i = 0; i < array1.length; i++) {
    let secondElement = array2[i] == undefined ? null : array2[i];
    
    array.push([ array1[i], secondElement ]);
  }

  return array;
}

function objectify(zippedArray) {
  let obj = {};

  for(let key of zippedArray) {
    obj[key[0]] = key[1];
  }

  return obj;
}

// console.log(zip(
//   ["pokee", "let me", "ruby on", "hdmi"],
//   ["mans", "ask you this", "rails", "kevin"]
// )) // [["pokee", "mans], ["let me", "ask you this"], ["ruby on", "rails"], ["hdmi", "kevin"]])

// console.log(
//   zip(["a", "b", "c", "d", "e"], [1,2,3,4])
// ) // [["a", 1], ["b", 2], ["c", 3], ["d", 4], ["e", null]]

console.log(objectify(
  [[1, 99], [3, -90], ["x", 3], ["q", null]]
))
