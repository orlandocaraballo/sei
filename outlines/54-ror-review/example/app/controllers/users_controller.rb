class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
    @addresses = Address.all
  end

  def associate_user_to_address
    UserAddress.create(
      user_id: params[:user_id],
      address_id: params[:address_id]
    )

    redirect_to root_path
  end
end
