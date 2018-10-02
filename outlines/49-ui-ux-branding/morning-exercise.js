"use strict";

// this compares value with the numbers array
function compare(numbers, value) {
  let lessValueArray = [];
  let moreValueArray = [];
  let sameValueArray = [];

  numbers.forEach(element => {
    if(element < value) {
      lessValueArray.push(element);
    } else if(element == value) {
      sameValueArray.push(element);
    } else {
      moreValueArray.push(element);
    }
  });

  return [lessValueArray, sameValueArray, moreValueArray];
}

// regular flatten / works with multidimentional
//  arrays of depth 1
function flatten(unflattenedArray) {
  let newArray = [];

  for(let i = 0; i < unflattenedArray.length; i++) {
    for(let j = 0; j < unflattenedArray[i].length ; j++) {
      newArray.push(unflattenedArray[i][j]);
    }
  }

  return newArray;
}

// recursive flatten / works with multidimentional
//  arrays of any depth
function flattenDeep(unflattenedArray){
  var result = [];

  unflattenedArray.forEach(function(elem){
    if (Array.isArray(elem)){
      // RECURSIVE CASE: elem is an array
      result = result.concat(flattenDeep(elem));
    }
    else {
      // BASE CASE: elem is not an array
      result.push(elem);
    }
  });

  return result;
}

console.log(compare([
  10, -30, -45, 4, 21, -30
], -30)); // [[-45], [-30, -30], [10, 4, 21]]

console.log(flattenDeep(
  [[0],[1,2],[3,4,5],[6, [-9, [1,2,34], 20],8,9]]
)); // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]