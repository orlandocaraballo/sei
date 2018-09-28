function add(arg1, arg2) {
  return arg1 + arg2;
}

function subtract(arg1, arg2) {
  return arg1 - arg2;
}

function multiply(arg1, arg2) {
  return arg1 * arg2;
}

function divide(arg1, arg2) {
  return arg1 / arg2;
}

function calculator(arg1, arg2, operation) {
  if(operation == 'add') {
    return add(arg1, arg2);
  } else if(operation == 'subtract') {
    return subtract(arg1, arg2);
  } else if(operation == 'multiply') {
    return multiply(arg1, arg2);
  } else if(operation == 'divide') {
    return divide(arg1, arg2);
  }
}

function betterCalculator(arg1, arg2, callback) {
  return callback(arg1, arg2);
}

function combo(arg1, arg2) {
  return multiply(add(arg1, arg2), 10);
}

console.log(calculator(1, 2, "add")); // 3
console.log(calculator(10, -2, "subtract")); // 12
console.log(calculator(11, 2, "multiply")); // 22
console.log(calculator(100, 4, "divide")); // 25

console.log(betterCalculator(11, 2, combo));

// this is how you would code it as an anonymous / arrow function 
// console.log(betterCalculator(11, 2, (arg1, arg2) => {
//   return multiply(add(arg1, arg2), 10);
// }));