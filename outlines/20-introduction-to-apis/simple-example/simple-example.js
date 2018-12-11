"use strict";

class Student {
  constructor(name, gender, knownFor) {
    this.name = name;
    this.gender = gender;
    this.knownFor = knownFor;
  }
}

axios.get("https://sei-api.herokuapp.com/students")
.then(response => {
  // console.log(response.data);
  let data = response.data;

  for(let i = 0; i < data.length; ++i) {
    let student = new Student(
      data[i].name,
      data[i].gender,
      data[i].knownFor
    );

    console.log(student);

    // document.body.innerHTML += "<p>";
    document.body.innerHTML += `<p><strong>name = ${ data[i].name}</strong>`;
    document.body.innerHTML += `<em>gender = ${ data[i].gender}</em></p>`;
    // document.body.innerHTML += "</p>";

  }
})