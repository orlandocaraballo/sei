// 1
function royalizer(gender, name) {
  let prefix;
  
  if(gender == "male") {
    prefix = 'His';
  } else {
    prefix = 'Her';
  }

  return `${ prefix } Majesty ${ name }`; 
}

console.log( royalizer("male", "Orlando") );

// 2
function magicDoor(door) {
  if(door === 1) {
    return "Here is your brand new car";
  } else if(door === 2) {
    return "Here is your brand t-shirt";
  } else if(door === 3) {
    return "Here is your blackhole";
  }
}

console.log( magicDoor(1) );

// // 3
function chooseDoor(door) {
  return magicDoor(door);
}

console.log( chooseDoor(3) );