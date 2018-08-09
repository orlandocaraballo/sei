// defines a new class called Teacher
class Teacher {
  // sets the constructor for Teacher
  // executes this code when you create a new Teacher object
  constructor(name, education) {
    // sets the instance variable to
    //  whatever is passed into the constructor
    this.name = name

    // sets the instance variable to whatever is passed
    //  in as education within the constructor
    this.education = education
  }
}

// defines a new class called SeiStudent
class SeiStudent {
  // creates a new constructor for SeiStudent
  //  that sets the instance variables name, height, hoursOfSleep and teacher
  constructor(name, height, hoursOfSleep, teacher) {
    this.name = name
    this.height = height
    this.hoursOfSleep = hoursOfSleep

    // creates an instance variable called triggers which stores
    //  individual things that trigger teachers :(
    this.triggers = [
      "Not raising your hand",
      "Demanding individual attention"
    ]

    // creates an instance variable called teacher
    //  that is set to what is passed in the constructor
    this.teacher = teacher
  }

  // uses the teacher and triggers instance variables
  //  to return a string based on those values
  annoyTeacher() {
    return `The teacher ${ this.teacher.name } is annoyed when: ${ this.triggers[0] }`
  }
}

// creates a new teacher and student
let orlando = new Teacher("orlando c", "college")
let student = new SeiStudent("anna", "9 ft", 1, orlando)

// selects a ul already on the page
let ul = document.querySelector("ul")

// creates a new li element
let li = document.createElement("li")

// sets the html of the li to be the name of the object which is
//  "orlando"
li.innerHTML = `<strong> Teacher: </strong> ${ orlando.name }`

// appends li to the ul
ul.appendChild(li)