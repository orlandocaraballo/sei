'use strict';

// set initial values
let array = [10, 15, 3, -2, 9000, -44];
let smallest = array[0];
let largest = array[0];
let reversedArray = [];

// find the smallest
for(let i = 1; i < array.length; ++i) {
  // compare against current smallest and if smaller then
  //  replace smallest with current element
  if(array[i] < smallest) {
    smallest = array[i];
  }
}

// find the largest
for(let i = 1; i < array.length; ++i) {
  // compare against current largest and if larger then
  //  replace smallest with current element
  if(array[i] > largest) {
    largest = array[i];
  }
}

// reverse the array
for(let i = array.length - 1; i >= 0; --i) {
  reversedArray.push(array[i]);
}

// display the smallest, largest and reversed array
console.log(`The smallest element is ${ smallest }`);
console.log(`The largest element is ${ largest }`);
console.log(`The reversed array is [ ${ reversedArray } ]`);