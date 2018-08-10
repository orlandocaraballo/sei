// 1
class Animal {
  constructor(height, weight, type, gender) {
    this.height = height
    this.weight = weight
    this.type = type
    this.gender = gender

    // alternative way of writing the function
    //  has the caveat of not being able to use 'get' or 'set'
    // this.displayHeightAndWeight = function() {
    //   return `${ this.height }ft : ${ this.weight }lb`
    // }
  }

  displayHeightAndWeight() {
    return `${ this.height }ft : ${ this.weight }lb`
  }
}

let spider = new Animal(0.1, 3, "spider", "female")
spider.height // 0.1
spider.weight // 3
spider.type // "spider"
spider.gender // "female"
spider.displayHeightAndWeight() // 0.1ft : 3lb

// console.log( spider )
// console.log( spider.displayHeightAndWeight() )

// 2
class Giraffe extends Animal {
  constructor(height, weight, gender, neck) {
    super(height, weight, "giraffe", gender)
    this.neckLength = neck
  }

  extendNeck(length) {
    this.neckLength += length
  }

  shrinkNeck(length) {
    this.neckLength -= length
  }
}

let giraffe = new Giraffe(15, 1750, "female", 7)
console.log( giraffe )
console.log( giraffe.displayHeightAndWeight() ) // 15ft : 1750lb

giraffe.extendNeck(2)

console.log( giraffe.neckLength ) // 9

giraffe.shrinkNeck(5)

console.log( giraffe.neckLength ) // 4