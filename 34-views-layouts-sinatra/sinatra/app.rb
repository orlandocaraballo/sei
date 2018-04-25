# main.rb
require "sinatra"
require "json"

grocery_list = %w{ cereal chicken bread eggs }

get "/" do
  @grocery_list = grocery_list

  erb :index
end

get "/query-string" do
  @params = params

  erb :query_string
end

get "/panda" do
  erb :panda
end

get "/json" do
  content_type :json

  { name: "orlando", age: 34, gender: "male" }.to_json
end

get "/form" do
  @name, @age, @gender = params[:name], params[:age], params[:gender]

  erb :form
end

post "/form" do
  @name, @age, @gender = params[:name], params[:age], params[:gender]
  
  erb :form_response

  # redirect "/form?name=#{params[:name]}&age=#{params[:age]}&gender=#{params[:gender]}"
end