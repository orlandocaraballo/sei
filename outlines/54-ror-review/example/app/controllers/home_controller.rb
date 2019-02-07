class HomeController < ApplicationController
  def index
    @users = User.all
    @addresses = Address.all
  end
end
