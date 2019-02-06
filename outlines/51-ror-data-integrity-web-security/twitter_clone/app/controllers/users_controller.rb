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
    user.update(user_params)

    # goes to show page
    redirect_to user_path(user)
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
    user.destroy
    # User.destroy(params[:id])

    redirect_to users_path
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


    if user.save
      # signs the newly created user in
      session[:user_id] = user.id
      flash[:info] = "Good"

      # redirects to the '/users' path
      redirect_to users_path
    else
      flash[:error] = user.errors.messages.join(",")

      redirect_to new_user_path
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
