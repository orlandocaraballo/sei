// calculator function
function calculator(operation, argument1, argument2) {
  if(operation === "add") {
    return argument1 + argument2;
  } else if(operation === "subtract") {
    return argument1 - argument2;
  } else if(operation === "multiply" ) {
    return argument1 * argument2;
  } else if(operation === "divide") {
    // division by zero
    if(argument2 === 0) {
      return -1;
    }

    return argument1 / argument2;
  }
}

// invoke function
console.log(calculator("multiply", 4, 2))
console.log(calculator("add", 4, 2))
console.log(calculator("divide", 4, 2))
console.log(calculator("subtract", 4, 2))