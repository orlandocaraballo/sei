'use strict';

let ul = document.createElement('ul');
document.body.appendChild(ul);

axios.get('https://sei-api.herokuapp.com/students').then(studentsRetrieved);

function studentsRetrieved(response) {
  const students = response.data;
  let li;

  students.sort(downSort).forEach(student => {
    li = document.createElement('li');
    li.innerHTML = `<strong>${ student.name }</strong>`;
    li.innerHTML += ` - <em>${ student.knownFor }</em>`;
    ul.appendChild(li);
  })
}

function downSort(studentA, studentB) {
  let returnValue;

  if(studentA.name > studentB.name) {
    returnValue = 1;
  } else if(studentA.name < studentB.name) {
    returnValue = -1;
  } else {
    returnValue = 0;
  }

  return returnValue;
}