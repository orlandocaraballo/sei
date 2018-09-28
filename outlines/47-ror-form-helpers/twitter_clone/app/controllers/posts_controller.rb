class PostsController < ApplicationController
  # get '/posts' do
  #   @users = Post.all
  #   erb :index
  # end
  def index
  end

  # get '/posts/:id' do
  #   @users = Post.find(params[:id])
  #   erb :show
  # end
  def show
    @user = User.find(params[:id])
  end

  # get '/posts/:id/edit' do
  #    erb :edit
  # end
  def edit
  end

  # put '/posts/:id' do
  #   
  # end
  def update
  end

  # delete '/posts/:id' do
  #   
  # end
  def destroy
  end

  # get '/posts/new' do
  #   erb :new
  # end
  def new
  end

  # get '/posts' do
  #   
  # end
  def create
  end
end
