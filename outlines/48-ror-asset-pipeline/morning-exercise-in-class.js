"use strict";

function zip(array1, array2) {
  let executeZip = array1.map((element, index) => {
    if(array2[index] == undefined) {
      array2[index] = null;
    }

    return [element, array2[index]];
  })

  return executeZip;
}

function objectify(zippedArray) {
  for(zippedArray) {
    
  }
}

console.log(zip(
  ["hello", "the matrix", "ruby on", "sinatra", "y", "s"],
  ["world", "has you", "rails", "was just the beginning"]
)) // [["pokee", "mans], ["let me", "ask you this"], ["ruby on", "rails"], ["hdmi", "kevin"]])

// console.log(
//   zip(["a", "b", "c", "d", "e"], [1,2,3,4])
// ) // [["a", 1], ["b", 2], ["c", 3], ["d", 4], ["e", null]]

// console.log(objectify(
//   [[1, 99], [3, -90], ["x", 3], ["q", null]]
// ))
