"use strict";

// set our students data array
const students = [
  {
    name: "mohamed",
    gender: "male",
    famousPhrase: "[Insert question about topic already explained here]"
  },
  {
    name: "christine",
    gender: "female",
    famousPhrase: "..."
  },
  {
    name: "ryan",
    gender: "male",
    famousPhrase: "Zzzzzzzzz"
  },
  {
    name: "bryan",
    gender: "male",
    famousPhrase: "I am not ryan!"
  }
]

// store ul within ul variable
const ul = document.getElementsByTagName("ul")[0];

// your code goes here
for(let i = 0; i < students.length; ++i) {
  let name = students[i].name;
  let gender = students[i].gender;
  let famousPhrase = students[i].famousPhrase;

  let li = document.createElement("li");
  li.innerHTML += `<strong>name: ${ name }</strong><br />`;
  li.innerHTML += `<em>gender: ${ gender }</em><br />`;
  li.innerHTML += `<p>famous phrase: ${ famousPhrase }</p>`;
  ul.appendChild(li);
}

// ------ INTRODUCT OF FOREACH ----
const array = [1,2,3,4];

// this code and the code on line 50
//  are equivalent
for(let i = 0; i < array.length; ++i) {
  console.log(array[i]);
}

// this is the same as the code on line 47
array.forEach(element => {
  console.log(element);
});