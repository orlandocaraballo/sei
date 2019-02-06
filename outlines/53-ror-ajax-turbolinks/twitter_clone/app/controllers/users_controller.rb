class UsersController < ApplicationController
  # get '/users' do
  #   @users = User.all
  #   erb :index
  # end
  def index
    @users = User.all
  end

  # get '/users/:id' do
  #   @users = User.find(params[:id])
  #   erb :show
  # end
  def show
    # loads the user with id of params[:id]
    #   from the database
    @user = User.find(params[:id])
  end

  # get '/users/:id/edit' do
  #   @user = User.find(params[:id])
  #   erb :edit
  # end
  def edit
    # loads the user with id of params[:id]
    #   from the database
    @user = User.find(params[:id])
  end

  # put '/users/:id' do
  #   user = User.find(params[:id])
  #   user.update(
  #     username: params[:user][:username],
  #     password: params[:user][:password]
  #   )
  #
  #   redirect "/users/#{ params[:id] }"
  # end
  def update
    # loads the user with id of params[:id]
    #   from the database
    user = User.find(params[:id])

    # updates the user that was currently loaded
    #   with the information retrieved from the
    #   form
    if user.update(user_params)
      flash[:info] = "User info been updated"
      
      # redirect to show page
      redirect user_path(user)
    else
      flash[:error] = "There was a problem updating this user's info"
      render :edit
    end
  end

  # delete '/users/:id' do
  #   user = User.find(params[:id])
  #
  #   user.destroy
  #
  #   redirect "/users"
  # end
  def destroy
    # this loads the user first
    user = User.find(params[:id])

    # this uses the information inside the user
    #   object and deletes the user
    if user.destroy
      flash[:info] = "User has been deleted"

      # redirect to the users index path
      redirect_to users_path
    else
      flash[:error] = "There was a problem deleting the user"
      
      # redirect back to the page you came from
      redirect_back
    end
  end

  # get '/users/new' do
  #   @user = User.new
  #   erb :new
  # end
  def new
    # creates a new instance of type User
    @user = User.new
  end

  # post '/users' do
  #   user = User.create(
  #     username: params[:user][:username],
  #     password: params[:user][:password]
  #   )
  #
  #   session[:user_id] = user.id
  # 
  #   redirect '/users'
  # end
  def create
    # creates a new user
    user = User.new(user_params)

    # checks if the user can save
    if user.save
      # signs the newly created user in
      session[:user_id] = user.id
      flash[:info] = "Good"

      # redirects to the '/users' path
      redirect_to users_path
    else
      # gather all user messages and redirect
      flash[:error] = user.errors.messages.join(",")

      # redirect back to the page you came from
      redirect_back
    end
  end

  private

  def is_admin
    if params[:user][:is_admin] == "1"
      true
    else
      false
    end
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
