'use strict';

// set default array and initiali sum value
let prices = [33, 26, 99, 120, 12, 45];
let sum = 0;

// add current price to sum
for(let i = 0; i < prices.length; ++i) {
  sum = sum + prices[i];
}

// display sum
console.log("The sum is: ", sum);
