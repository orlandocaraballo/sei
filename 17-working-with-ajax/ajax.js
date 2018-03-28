axios.get("http://localhost:4567", {
}).then(function (response) {
  console.log(response.data)
}).catch(function (error) {
  console.log(error)
})