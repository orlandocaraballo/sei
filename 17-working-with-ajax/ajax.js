axios.get("https://raw.githubusercontent.com/orlandocaraballo/sei-march-5/master/17-working-with-ajax/data.json", {
}).then(function (response) {
  console.log(response)
}).catch(function (error) {
  console.log(error)
})