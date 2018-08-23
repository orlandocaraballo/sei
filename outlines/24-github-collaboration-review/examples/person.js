class People {
  constructor() {
    this.all = []
  }

  getPersonByName(name) {
    return this.all.filter(person => { person.name == name })
  }
}

class Person {
  constructor(firstName, lastName,  age, gender) {
    this.firstName = firstName
    this.lastName = lastName
    this.age = age
    this.gender = gender
  }
}

// wraps the axios behavior in a function to be executed elsewhere
function delayAxios(id, doAfterNetworkCall) {

  // retrieves the data from github
  axios.get(`https://raw.githubusercontent.com/orlandocaraballo/sei/master/outlines/18-working-with-ajax/json/person-${id}.json`)
  .then(response => {
    let data = response.data

    person = new Person(
      data['first-name'],
      data['last-name'],
      data['age'],
      data['gender']
    )

    // this happens when axios comes back from
    //  the API call
    doAfterNetworkCall(person)
  })
}