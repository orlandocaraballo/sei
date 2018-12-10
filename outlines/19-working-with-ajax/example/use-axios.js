// create new p tag
const p = document.createElement("p");

// makes request via axios
axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei/master/outlines/19-working-with-ajax/json/person-1.json")
.then(response => {
  const data = response.data;

  // adds response data to p tag
  p.innerHTML += `<h1>${ data["first-name"] } ${ data["last-name"] }</h1>`;
  p.innerHTML += `<em>${ data["age"] }</em>`;
  p.innerHTML += `<strong>${ data["gender"] }</strong>`;
  
  // adds p tag to body
  document.body.appendChild(p);
});