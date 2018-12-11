"use strict";

// converts the start and end coordinates to a string
function stringifyLine(startingCoordinates, endingCoordinates) {
  return `{(${ startingCoordinates.x },${ startingCoordinates.y }) - (${ endingCoordinates.x },${ endingCoordinates.y })}`;
}

// moves a point 
function translatePoint(startingCoordinates, amountToMoveBy) {
  startingCoordinates.x += amountToMoveBy;
  startingCoordinates.y += amountToMoveBy;

  return startingCoordinates;
}

// uses the first two functions and combines them together to use here
function createLineAndStringify(startingCoordinates, amountToMoveBy) {
  let startPoint = startingCoordinates;
  let endPoint = translatePoint(startingCoordinates, amountToMoveBy);

  return stringifyLine(startPoint, endPoint);
}

// defines a slot for an anonymous function that will be defined at a later point
function createLineAndStringifyUsingCallback(startingCoordinates, callbackFunction) {
  return callbackFunction(startingCoordinates);
}

// invocation
console.log(stringifyLine({ x: 3, y: 2 }, { x: 18, y: -3 })) // "{(3,2) - (18,-3)}"
console.log(stringifyLine({ x: 15, y: 2 }, { x: 100, y: 14 })) // "{(15,2) - (100,14)}"
console.log(stringifyLine({ x: -78, y: -90 }, { x: 1, y: 1 })) // "{(-78,-90) - (1,1)}"

console.log(translatePoint({ x: 10, y: 8 }, 4)) // { x: 14, y: 12 }
console.log(translatePoint({ x: -15, y: -900 }, 20)) // { x: 5, y: 880 }
console.log(translatePoint({ x: 14, y: 2 }, -9)) // { y: 5, y: -7 }

console.log(createLineAndStringify({ x: 10, y: 8 }, 4)) // "{(10,8) - (14, 12)}"
console.log(createLineAndStringify({ x: -15, y: -900 }, 20)) // "{(-15, -900) - (5, 880)}"
console.log(createLineAndStringify({ x: 14, y: 2 }, -9)) // "{(14, 2) - (5, -7)}"

// using anonymous functions
createLineAndStringifyUsingCallback({x: 1, y: 1}, point => {
  console.log(point.x + 5);
});

createLineAndStringifyUsingCallback({x: 1, y: 1}, function(point) {
  console.log(point.x * 5);
});