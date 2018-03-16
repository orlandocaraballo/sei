function magicDoor(doorNumber) {
  let prefix = "You have won";
  let output = "";

  if(doorNumber == 1) {
    output = `${prefix} a brand new car!`
  } else if(doorNumber == 2) {
    output = `${prefix} a brand new house!`
  } else if(doorNumber == 3) {
    output = `${prefix} a brand new tent!`
  }

  return output
}

console.log(magicDoor(2))