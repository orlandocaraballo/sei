class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new
    @post = Post.new
    @authors = Author.all
  end

  def create
    post = Post.new(post_params)

    if post.save
      flash[:info] = "Everything good"
      redirect_to post_path(post.id)
    else
      flash[:error] = "Everything bad"
      redirect_to new_post_path
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :author_id)
  end
end
