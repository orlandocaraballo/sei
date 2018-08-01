// 1
function royalizer(gender, name) {
  if(gender == "male") {
    return `His Majesty ${ name }`
  } else {
    return `Her Majesty ${ name }`
  }
}

console.log( royalizer("female", "Denisse") )

// 2
function magicDoor(door) {
  if(door == 1) {
    return "Here is your brand new car"
  } else if(door == 2) {
    return "Here is your brand t-shirt"
  } else if(door == 3) {
    return "Here is your blackhole"
  }
}

console.log( magicDoor(3) )

// 3
function chooseDoor(door) {
  return magicDoor(door)
}

console.log( chooseDoor(1) )