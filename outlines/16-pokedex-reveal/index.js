// gifs is set to data from data.js
const gifs = window.data.data;
const main = document.querySelector("main");
const h1 = document.querySelector("h1");
const image = document.createElement("img");
const imageUrlArray = generateUrlArray(gifs);

// set the click handler of the h1
h1.addEventListener("click", event => {
  // pick a random number between 0 and
  //  the current length
  const index = randomInteger(imageUrlArray.length);

  // get the gif url stored in imageUrlArray
  const randomImageUrl = imageUrlArray[index];
  
  // change the src attribute to gif url
  image.setAttribute("src", randomImageUrl);

  // append image to main element
  main.appendChild(image);

  // remove the element at position index
  //  has the side effect of reducing array size by 1
  imageUrlArray.splice(index, 1);
})

// pick a random integer
function randomInteger(max) {
  return Math.floor(Math.random() * max);
}

// generate new array
function generateUrlArray(gifs) {
  // create empty array
  const gifUrls = [];

  // loop thru gifs array, get the origin url image
  //  push them into gifUrls
  for(let i = 0; i < gifs.length; ++i) {
    gifUrls.push(gifs[i].images.original.url);
  }

  return gifUrls;
}

// using forEach to loop
function generateUrlArrayUsingForEach(gifs) {
  // create empty array
  const gifUrls = [];

  // loop thru gifs array, get the origin url image
  //  push them into gifUrls
  gifs.forEach(element => {
    gifUrls.push(element.images.original.url);
  })

  return gifUrls;
}

// using map to generate new array
function generateUrlArrayUsingMap(gifs) {
  // loop thru gifs array, get the origin url image
  //  copy them into gifUrls
  const gifUrls = gifs.map(element => {
    return element.images.original.url;
  })

  return gifUrls;
}