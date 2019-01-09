require "sinatra"

groceries = %w{cereal bread milk eggs }

get "/" do
  erb(:home)
end

get "/groceries" do
  @groceries = groceries

  erb(:groceries)
end

get "/groceries/:id" do
  index = params[:id].to_i

  @food_item = groceries[index - 1]

  erb(:grocery)
end