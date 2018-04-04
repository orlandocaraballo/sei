// this loops 5 times
for(let i = 0; i < 5; ++i){
  // this displays hola 5 times
  console.log("hola")
}
console.log("orlando")







// select the ul from the html document
let ulElement = document.querySelector("ul")
 
// setup what you need for handlebars
let source = document.getElementById("entry-template").innerHTML
let template = Handlebars.compile(source)

// define our Person object
class Person {
  constructor(name, age) {
    // set your instance variables
    this.name = name
    this.age = age
  }

  // setup 
  nameAndAge() {
    return `Hi my name is ${this.name} and I am ${this.age} years old.`
  }

  render() {
    // renders the html based on the data being
    // passed into the template
    let html = template({
      title: this.name,
      body: this.age
    })
    
    // continuously add the html generated into the ul
    // html element
    ulElement.innerHTML += html
  }
}

// get information from the github json
axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei-march-5/master/17-working-with-ajax/json/all.json")
.then((response) => {
  
  response.data.forEach((personLiteral) => {
    // concatenate first name with last name
    let fullname = `${personLiteral["first-name"]} ${personLiteral["last-name"]}`
    
    // create person object based on full name and age
    let person = new Person(fullname, personLiteral.age)

    // render the person just created to the html
    person.render()
  })

})
.catch((error) => {
  console.log(error)
})