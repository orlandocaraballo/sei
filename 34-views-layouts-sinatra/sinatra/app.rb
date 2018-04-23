# main.rb
require "sinatra"
require "json"

grocery_list = %w{ cereal chicken bread eggs }

get "/" do
  @grocery_list = grocery_list

  erb :index
end

get "/panda" do
  erb :panda
end

get "/json" do
  content_type :json

  { name: "orlando", age: 34, gender: "male" }.to_json
end