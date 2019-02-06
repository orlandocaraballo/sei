class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    
    if user && user.authenticate(params[:session][:password]) 
      session[:user_id] = user.id
      flash[:notice] = 'Successfully logged in!'

      redirect_to root_path
    else
      flash.now.alert = "Incorrect email or password, try again."
      render :new
    end
  end

  def destroy
    # deletes user_id from session
    session.delete(:user_id)
    redirect_to login_path, notice: 'You have been logged out!'
  end
end
