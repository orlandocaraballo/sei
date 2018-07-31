// 1

let number = 40

// if(number < 10) {
//   console.log("Your number is less than 10")
// } else if(number > 10) {
//   console.log(`Your number is ${ number } and it is greater than 10`)
// }

// 2

let temp = 40
let acStatus = "off"

// if(temp > 80 && acStatus == "off") {
//   console.log("Turn the AC on")
// } else if (temp > 80 && acStatus == "on") {
//   console.log("This thing is broken")
// } else if(temp < 60 && acStatus == "on") {
//   console.log("Brrr, turn this thing off")
// } else if(temp < 80 && acStatus == "off") {
//   console.log("Not worth the electricity. leave it off.")
// }

// 3
let str = '+';

for(let i = 10; i >= 0; i--) {
  console.log(str.repeat(i))
}