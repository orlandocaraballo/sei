// logs orlando to the console
function logOrlando() {
  console.log("Orlando")
}

// adds two numbers together
function add(numA, numB) {
  return numA + numB
}

// subtracts numB from numA
function subtract(numA, numB) {
  return numA - numB
}

// exercise 1
function welcomeMessagePerStudent(name, message) {
  return {
    studentName: name,
    studentMessage: message
  }
}

function welcomeMessages() {
  let students = ["rodrigo", "garth", "sandra"]

  for(let i = 0; i < students.length; ++i) {
    let studentName = students[i]
    let message = `Welcome to class ${ studentName }!`

    let obj = welcomeMessagePerStudent( studentName, message)

    console.log( obj )
  }
}

// swaps array element at index 0 
//  with array element at index 1
function swap(array) {
  let elementA = array[0]
  let elementB = array[1]
  let newArray = [ elementB, elementA ]

  return newArray
}

// utilizes the swap, add and subtract functions
//  to create more complex behavior
function swapAndAddAndSubtract(array = [9, 10]) {
  // to verify the initial value of array
  console.log(array)

  let swappedArray = swap(array)

  // to verify the swapping is taking place
  console.log(swappedArray)

  // adds the first element with the second 
  let sum = add(swappedArray[0], swappedArray[1])

  // subtracts the second element from the first
  let difference = subtract(sum, 9000)

  return difference
}

// executes swapAndAddAndSubtract
console.log( swapAndAddAndSubtract([8000, 45]) )

// multiplies two numbers together
function multiply(operandA, operandB) {
  return operandA * operandB
}

// this function overrides the one above
function multiply() {
  // sets i to 1
  let i = 1

  if(true) {
    // this variable exists only within this if statement
    let i = 10

    // logs 10 to the console because
    //  the i within the if statement takes precendence scope
    //  versus the i set on line 77
    console.log(i) // 10
  }

  // we do not have access to the i within the if
  //  statement therefore this will return the initial
  //  value of i set on line 77
  console.log(i) // 1
}

// runs function on line 76
multiply(1, 2)

