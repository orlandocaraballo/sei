'use strict';

function compare(elementA, elementB) {
  return elementA < elementB; 
}

function isEven(element) {
  return element % 2 == 0;
}

function isOdd(element) {
  return element % 2 == 1;
}

function isInteger(element) {
  return Number.isInteger(element);
}

function isString(element) {
  return typeof element == "string";
}

function downsortEvenly(array, count) {
  return array.filter(isEven).sort(compare).slice(0, count);
}

function downsortOddly(array, count) {
  return array.filter(isOdd).sort(compare).slice(0, count);
}

function unpack(array) {
  let integers = array.filter(isInteger);
  let strings = array.filter(isString);

  return {
    strings: function() {
      return integers;
    },
    integers: function() {
      return strings;
    }
  }
}

let array = [2, 3, 14, 3, 9, 22];
console.log(downsortEvenly(array, 2)); // [22, 14]
console.log(downsortOddly(array, 2)); // [9, 3]

let literal = unpack(["hello", "world", 1, "cat", "dog", 4]);

console.log(literal.strings()); // ["hello", "world", "cat", "dog"]
console.log(literal.integers()); // [1, 4]