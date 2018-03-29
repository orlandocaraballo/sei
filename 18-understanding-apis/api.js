// selects the form element
let form = document.querySelector("form")
let div = document.querySelector("div")

form.addEventListener("submit", (event) => {
  // prevents page from reloading
  event.preventDefault()

  // capture the form field
  let searchField = document.querySelector("input[type=search]")

  // this style solution is simpler than the commented one below but
  // is not as powerful in terms of what you can
  // this passes the searchField value to the api as a search parameter
  axios.get(`https://swapi.co/api/people?search=${ searchField.value }`)
  .then((response) => {
    let eyeColor = response.data.results[0].eye_color

    // this gets the hair color of the first search result
    // displays it to the page and sets the text color to the eye color
    div.innerHTML = `<p style="color:${ eyeColor }">${ eyeColor }</p>`
  }).catch((error) => {
    // runs when there is an error
    div.innerHTML = `<p style="color: red">No Results Found :(</p>`
  })
  
  /*
    //The following code does the same as above but in a slightly
    //  different way. Uncomment to run

    // this passes in a search query parameter with the value
    // set to what the user typed into the form field
    axios.get(`https://swapi.co/api/people`,{
      params: {
        "search" : searchField.value
      }
    })
    .then((response) => {
      let eyeColor = response.data.results[0].eye_color
      let existingParagraph = document.querySelector("p")
      let newParagraph = document.createElement("p")

      // this gets the hair color of the first search result
      // displays it to the page and sets the text color to the eye color
      newParagraph.style.color = eyeColor
      newParagraph.innerText = eyeColor
      
      // check if there is an existing paragraph on the html page
      if(existingParagraph) {
        // if there is already a paragraph element that exists in the html
        // then replace that element with the newly made paragraph
        div.replaceChild(newParagraph, existingParagraph)
      } else {
        // if there is no paragraph element that exists in the html
        // then add the newly made paragraph to the div
        div.appendChild(newParagraph)
      }
    
    }).catch((error) => {
      // runs when there is an error
      div.innerHTML = `<p style="color: red">No Results Found :(</p>`
    })
  */
})