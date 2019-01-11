"use strict";

// finds the even numbers and returns a string
//  where each number is separated by a space
function joinEven(array) {
  return joinByDivisible(array, 2);
}

function joinOddDifferently(array) {
  return array.filter(element => element % 2 == 0).join(" ");
}

// finds the odd numbers and returns a string
//  where each number is separated by a space
function joinOdd(array) {
  let newArray = []

  for(let i = 0; i < array.length ; ++i) {
    if(array[i] % 2 != 0) {
      newArray.push(array[i]);
    }
  }

  return newArray.join(" ");
}

function joinOddDifferently(array) {
  return array.filter(element => element % 2 != 0).join(" ");
}

// finds the numbers divisible by divisor and returns a string
//  where each number is separated by a space
function joinByDivisible(array, divisor) {
  let newArray = []

  for(let i = 0; i < array.length ; ++i) {
    if(array[i] % divisor == 0) {
      newArray.push(array[i]);
    }
  }

  return newArray.join(" ");
}

function joinByDivisibleDifferently(array) {
  return array.filter(element => element % divisor == 0).join(" ");
}

// set our array
const array = [-57, 33, 2, -102];

// display our results
console.log(joinEven(array)); // // 2 -102
console.log(joinOdd(array)); // -57 33
console.log(joinByDivisible(array, 3)); // -57 33 -102