// paramOne and paramTwo are parameters
function addAndMultiplyByTwo(paramOne, paramTwo) {
  return paramOne + paramTwo * 2
}

// array is a parameter
function logArrayWithWords(array) {
  for(let i = 0; i < array.length; i++) {
    // console.log(`The value of index ${i} is ${array[i]}`)
  }
}

// no parameters
function displayMyName() {
  return "Orlando Caraballo"
}

// 4 and 5 are arguments
console.log(addAndMultiplyByTwo(4, 5)) // 14

// the newly created array is the ONLY argument
console.log(logArrayWithWords([21, 22, 23]))
/*
  This code would log the following to the console:
    The value of index 0 is 21
    The value of index 1 is 22
    The value of index 2 is 23
*/

console.log(displayMyName()) // Orlando Caraballo