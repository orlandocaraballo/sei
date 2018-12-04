//This comes from data.js
let gifs = window.data.data;
let main = document.querySelector("main");
let h1 = document.querySelector("h1");
let image = document.createElement("img");
let imageUrlArray = generateUrlArray(gifs);

h1.addEventListener("click", event => {
  let index = randomInteger(imageUrlArray.length);
  let randomImageUrl = imageUrlArray[index];
  
  image.setAttribute("src", randomImageUrl);
  main.appendChild(image);

  imageUrlArray.splice(index, 1);
})

function randomInteger(max) {
  return Math.floor(Math.random() * Math.floor(max));
}

function generateUrlArray(gifs) {
  return gifs.map(element => {
    return element.images.original.url;
  })
}