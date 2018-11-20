'use strict';

// setting our variables
const eleven = 11;
const twentyTwo = 22;
const thirtyThree = 33;
const fortyFour = 44;

// setting our array
const doubles = [
  fortyFour,
  thirtyThree,
  twentyTwo,
  eleven
];

// looping backwards
for(let i = doubles.length - 1; i >= 0; --i) {
  console.log(doubles[i]);
}

// loop forwards and check is even or odd
for(let i = 0; i < doubles.length; ++i) {
  if(doubles[i] % 2 == 0) {
    console.log("The number " + doubles[i] + " is even!");
  } else {
    console.log("The number " + doubles[i] + " is odd!");
  }
}

