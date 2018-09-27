function summer(num1, num2) {
  return num1 + num2;
}

function multiplier(num1, num2) {
  return num1 * num2;
}

function combiner(num1, num2) {
  let array = [];
  array[0] = summer(num1, num2);
  array[1] = multiplier(num1, num2);
  return array;
}

console.log(summer(10,15)); // 25
console.log(multiplier(3,-25)); // -75
console.log(combiner(-3, 51)); // [48, -153]