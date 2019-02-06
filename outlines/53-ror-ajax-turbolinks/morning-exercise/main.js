'use strict';

let ul = document.createElement('ul');
document.body.appendChild(ul);

axios.get('https://sei-api.herokuapp.com/students').then(studentsRetrieved);

function studentsRetrieved(response) {
  const students = response.data;
  let li;

  students.sort(downSort).forEach(student => {
    li = document.createElement('li');
    li.innerHTML = `<strong>${ student.name.capitalize() }</strong>`;
    li.innerHTML += ` - <em>${ student.knownFor }</em>`;
    ul.appendChild(li);
  })
}

function downSort(elementA, elementB) {
  let returnValue;

  if(elementA.name > elementB.name) {
    returnValue = 1;
  } else if(elementA.name < elementB.name) {
    returnValue = -1;
  } else {
    returnValue = 0;
  }

  return returnValue;
}

// add capitalize to String prototype
String.prototype.capitalize = function() {
  // orlando
  // o^ = O
  // O + rlando
  // Orlando
  return this.charAt(0).toUpperCase() + this.substr(1);
}