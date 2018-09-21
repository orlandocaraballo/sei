require 'sinatra'
require_relative 'models'

set :sessions, true
use Rack::MethodOverride

def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  end
end

def something
  'sdfsdfsd'
end

get '/' do
  if session[:user_id]
    erb :user_profile, locals: { current_user: current_user }
  else
    erb :index
  end
end

post '/signup' do
  # creates new user
  user = User.create(
    username: params[:username],
    password: params[:password]
  )

  # logs user in
  session[:user_id] = user.id

  # redirects to content page
  redirect '/content'
end

post '/login' do
  user = User.find_by(username: params[:username])

  if user && user.password == params[:password]
    session[:user_id] = user.id
    redirect '/posts'
  else
          redirect '/login'
  end
end

get '/posts/new' do
  erb :new_post
end

get '/posts' do
  output = ''
  output += erb :new_posts
  output += erb :posts, locals: { posts: Post.order(:created_at).all }
  output
end

post '/posts' do
  Post.create(
    title: params[:title],
    content: params[:content],
    user_id: current_user.id
  )

  redirect '/posts'
end

get '/content' do
  erb :content, locals: { users: User.all }
end

get '/account' do
  erb :account
end

delete '/account' do
  puts 'something to the terminal'
end