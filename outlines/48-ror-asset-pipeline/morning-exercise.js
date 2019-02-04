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

  for(let subArray of zippedArray) {
    obj[subArray[0]] = subArray[1];
  }

  return obj;
}

// console.log(zip(
//   ["hello", "the matrix", "ruby on", "sinatra"],
//   ["world", "has you", "rails", "was just the beginning"]
// )) // [["pokee", "mans], ["let me", "ask you this"], ["ruby on", "rails"], ["hdmi", "kevin"]])

console.log(
  zip(["a", "b", "c", "d", "e"], [1,2,3,4,5,6,7])
) // [["a", 1], ["b", 2], ["c", 3], ["d", 4], ["e", null]]

// console.log(objectify(
//   [[1, 99], [3, -90], ["x", 3], ["q", null]]
// )) // { 1 : 99, 3 : 90, "x" : 3, "q" : null }
