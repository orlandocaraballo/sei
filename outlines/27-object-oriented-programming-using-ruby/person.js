'use strict';

const strftime = require('strftime')
const sleep = require('sleep')

class Person {
  constructor(name, gender) {
    this.name = name
    this.gender = gender
    this.bornTime = new Date()
  }

  fancyBornTime() {
    return strftime("%I:%M:%S %p", this.bornTime)
  }
}

let personA = new Person("orlando", "male")

sleep.sleep(2)

let personB = new Person("rodrigo", "male")


console.log( personA.fancyBornTime() )
console.log( personB.fancyBornTime() )