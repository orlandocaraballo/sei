class PostsController < ApplicationController
  # get '/posts' do
  #   @users = Post.all
  #   erb :index
  # end
  def index
    @posts = Post.all
  end

  # get '/posts/:id' do
  #   @users = Post.find(params[:id])
  #   erb :show
  # end
  def show
    
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
    Post.destroy(params[:id])

    redirect_to posts_path
  end

  # get '/posts/new' do
  #   erb :new
  # end
  def new
    @post = Post.new
  end

  # get '/posts' do
  #   
  # end
  def create
    Post.create(
      title: params[:post][:title],
      content: params[:post][:content],
      user_id: params[:post][:user_id]
    )

    # redirect_to '/posts/new'
    redirect_to posts_path
  end
end
