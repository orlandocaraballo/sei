require "sinatra"
require "json"

get "/" do
  content_type :json
  
  [{
    first_name: "orlando",
    last_name: "caraballo",
    age: 34,
    gender: "male"
  },
  {
    first_name: "patrisha",
    last_name: "caraballo",
    age: 34,
    gender: "female"
  },
  {
    first_name: "denisse",
    last_name: "caraballo",
    age: 23,
    gender: "female"
  }].to_json
end