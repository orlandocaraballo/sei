require "sinatra"

get "/" do
  erb :index
end

get "/double-time" do
  @text = "sdfsd"
  
  erb :double_time
end

get "/info" do
  erb :form
end

post "/info" do
  puts params.inspect
end