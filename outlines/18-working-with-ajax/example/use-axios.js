let promise = axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei/master/outlines/18-working-with-ajax/json/person-1.json")

console.log(promise)

promise.then(response => {
  let data = response.data
  let person = new Person(
    data["first-name"],
    data["last-name"],
    data["age"],
    data["gender"]
  )

  console.log( person )

  // let p = document.createElement("p")

  // p.innerHTML = response.data["first-name"]
  // // console.log(response)

  // document.body.appendChild(p)
}).catch(function(response){
  console.error(response)
})

class Person {
  constructor(firstName, lastName, age, gender) {
    this.firstName = firstName
    this.lastName = lastName
    this.age = age
    this.gender = gender
    this.type = "mammal"
  }
}