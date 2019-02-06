class ApplicationController < ActionController::Base
  # makes this available in every view
  helper_method :current_user
  helper_method :authorize

  def current_user
    # the following code is shorthand for line 5-7
    #   @user ||= User.find(session[:user_id]) if session[:user_id]
    if session[:user_id]
      @user ||= User.find(session[:user_id])
    end
  end

  # this authorizes the user
  def authorize
    if current_user.nil?
      redirect_to login_path, alert: 'You must be logged in to access this page.'
    end
  end
end
