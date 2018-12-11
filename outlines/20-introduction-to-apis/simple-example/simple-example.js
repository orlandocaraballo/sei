"use strict";

axios.get("https://sei-api.herokuapp.com/students/1")
.then(response => {
  console.log(response.data);
})