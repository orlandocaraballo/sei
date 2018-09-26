function literalToArray(literal) {
  let resultArray = [];

  for(key in literal) {
    resultArray.push([`${key}`, literal[key]]);
  }

  return resultArray;
}

function unwindArray(arrayOfArrays) {
  let object = { keys: [], values: [] };

  for(elem of arrayOfArrays) {
    object.keys.push(elem[0]);
    object.values.push(elem[1]);
  }

  return object;
}

function unwindLiteral(literal) {
  return unwindArray(literalToArray(literal));
}

console.log(literalToArray({ 
  name: 'orlando', 
  age: 34, 
  bday: '12/01/1983' 
})) // [['name', 'orlando'], ['age', 34], ['bday', '12/01/1983'] ]

console.log(unwindArray([
  ['name', 'orlando'], 
  ['age', 34], 
  ['bday', '12/01/1983']
])) // { keys: ['name', 'age', 'bday'], values: ['orlando', 34, '12/01/1983'] }

console.log(unwindLiteral({ 
  name: 'orlando', 
  age: 34, 
  bday: '12/01/1983'
})) // { keys: ['name', 'age', 'bday'], values: ['orlando', 34, '12/01/1983'] }