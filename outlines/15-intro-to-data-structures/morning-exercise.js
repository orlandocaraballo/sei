// 1
class Animal {
  constructor(height, weight, type, gender) {
    this.height = height;
    this.weight = weight;
    this.type = type;
    this.gender = gender;
  }

  displayHeightAndWeight() {
    return `${ this.height }ft : ${ this.weight }lb`;
  }
}

let spider = new Animal(0.1, 3, "spider", "female")
console.log(spider.height) // 0.1
console.log(spider.weight) // 3
console.log(spider.type) // "spider"
console.log(spider.gender) // "female"
console.log(spider.displayHeightAndWeight()) // 0.1ft : 3lb

// 2
class Giraffe extends Animal {
  constructor(height, weight, gender, neckLength) {
    super(height, weight, "giraffe", gender);
    this.neckLength = neckLength;
  }

  extendNeck(length) {
    if((this.neckLength + length) <= this.height) {
      this.neckLength += length;
      this.height += length;
    }
  }

  shrinkNeck(length) {
    if((this.neckLength - length) >= 0) {
      this.neckLength -= length;
      this.height -= length;
    }
  }
}

let giraffe = new Giraffe(15, 1750, "female", 7)
console.log( giraffe )
console.log( giraffe.displayHeightAndWeight() ) // 15ft : 1750lb

giraffe.extendNeck(2)

console.log( giraffe.neckLength ) // 9

giraffe.shrinkNeck(5)

console.log( giraffe.neckLength ) // 4