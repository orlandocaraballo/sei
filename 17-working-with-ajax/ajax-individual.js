// selecting ul from the html side
let ul = document.querySelector("ul")

// container class
class People {
  constructor() {
    this.all = []
  }

  add(person) {
    this.all.push(person)
  }
}

// individual class
class Person {
  constructor(firstName, lastName, age, gender) {
    this.firstName = firstName
    this.lastName = lastName
    this.age = age
    this.gender = gender
  }
}

// retrieve data from json
axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei-march-5/master/17-working-with-ajax/data.json")
.then((response) => {
  let data = response.data
  let people = new People()

  data.forEach((item) => {
    let li = document.createElement("li")

    people.add(
      new Person(
        item["first-name"],
        item["last-name"], 
        item["age"], 
        item["gender"]
      )
    )

    li.innerHTML = item["first-name"]
    ul.appendChild(li)
  })

  // let people = new People([
  //   new Person(
  //     data[0]["first-name"], 
  //     data[0]["last-name"], 
  //     data[0]["age"], 
  //     data[0]["gender"]
  //   ),
  //   new Person(
  //     data[1]["first-name"], 
  //     data[1]["last-name"], 
  //     data[1]["age"], 
  //     data[1]["gender"]
  //   ),
  //   new Person(
  //     data[2]["first-name"], 
  //     data[2]["last-name"], 
  //     data[2]["age"], 
  //     data[2]["gender"]
  //   )
  // ])

  // let orlando = new Person(
  //   data[0]["first-name"], 
  //   data[0]["last-name"], 
  //   data[0]["age"], 
  //   data[0]["gender"]
  // )

  // people.all.forEach((element) => {
  //   let li = document.createElement("li")
  //   li.innerHTML = element.firstName
  //   ul.appendChild(li)

  //   console.log(element)
  // })

  console.log(people)
}).catch((error) => {
  console.log(error)
})

// 