require 'sinatra'
require 'sinatra/flash'
require_relative 'models'

enable :sessions

get '/' do
  erb :landing_page
end

get '/users' do
  # if session[:user_id]
  # else
  #   redirect '/signin'
  # end
  erb :users, locals: { users: User.all }
end

get '/signup' do
  erb :signup
end

post '/signup' do
  user = User.create(
    username: params[:username],
    password: params[:password]
  )

  session[:user_id] = user.id

  redirect '/users'
end

get '/signin' do
  erb :signin
end

post '/signin' do
  user = User.find_by(username: params[:username])

  if user && user.password == params[:password]
    session[:user_id] = user.id
    flash[:info] = 'You have been signed in'

    redirect '/users'
  else
    flash[:error] = 'There was a problem with your signin, sucka!'
    redirect '/signup'
  end
end

get '/logout' do
  session[:user_id] = nil

  redirect '/'
end