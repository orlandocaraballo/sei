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

get "/form" do
  erb(:form)
end

post "/person" do
  puts "-----THE PARAMETERS ARE -> #{params} ----------------"

  # in here you can use these params to sign someone up or log them in
  #   or a variety of other things
end

get "/main.css" do
  scss(:main)
end