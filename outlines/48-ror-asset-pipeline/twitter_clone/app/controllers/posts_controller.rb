class PostsController < ApplicationController
  # get '/posts' do
  #   @users = Post.all
  #   erb :index
  # end
  def index
    # loads all posts from the database
    @posts = Post.all
  end

  # get '/posts/:id' do
  #   @users = Post.find(params[:id])
  #   erb :show
  # end
  def show
    # loads the post with id of params[:id]
    #   from the database
    @post = Post.find(params[:id])
  end

  # get '/posts/:id/edit' do
  #   @post = Post.find(params[:id])
  #   erb :edit
  # end
  def edit
    # loads the post with id of params[:id]
    #   from the database
    @post = Post.find(params[:id])
  end

  # put '/posts/:id' do
  #   post = Post.find(params[:id])
  #   post.update(
  #     title: params[:post][:title],
  #     content: params[:post][:content]
  #     user_id: params[:post][:user_id]
  #   )
  # 
  #   redirect '/posts/:id/edit'
  # end
  def update
    # loads the post with id of params[:id]
    #   from the database
    post = Post.find(params[:id])

    # loads the post with id of params[:id]
    #   from the database
    post.update(
      title: params[:post][:title],
      content: params[:post][:content],
      user_id: params[:post][:user_id]
    )

    redirect_to post_path(post)
  end

  # delete '/posts/:id' do
  #   Post.destroy(params[:id])
  #   
  #   redirect '/posts'
  # end
  def destroy
    Post.destroy(params[:id])

    # redirect to /posts path
    redirect_to posts_path
  end

  # get '/posts/new' do
  #   @post = Post.new
  #   erb :new
  # end
  def new
    @post = Post.new

    # load all the users in the system
    @users = User.all
  end

  # post '/posts' do
  #   Post.create(
  #     title: params[:post][:title],
  #     content: params[:post][:content],
  #     user_id: params[:post][:user_id]
  #   )
  #
  #   redirect '/posts'
  # end
  def create
    # creates a new user
    Post.create(
      title: params[:post][:title],
      content: params[:post][:content],
      user_id: params[:post][:user_id]
    )

    # redirect_to '/posts/new'
    redirect_to posts_path
  end

  def index_by_user
    # load posts by user id
    @posts = Post.where(user_id: params[:user_id])

    # render posts index template
    render :index
  end
end
