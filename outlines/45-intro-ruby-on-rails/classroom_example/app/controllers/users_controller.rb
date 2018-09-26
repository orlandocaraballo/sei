class UsersController < ApplicationController  

  # get "/users" do
  #   
  # end
  def index
    users = [
      Hash[
        name: 'orlando',
        gender: 'male'
      ],
      Hash[
        name: 'janice',
        gender: 'female'
      ],
      Hash[
        name: 'diana',
        gender: 'unknown'
      ],
      Hash[
        name: 'rey',
        gender: 'groot'
      ]
    ]

    # erb :index.erb
    # automatically does the following
    render '/users/index', { locals: { users: users } }
  end

  def show
    user = Hash[
      name: 'rey',
      gender: 'groot'
    ]

    render '/users/show', { locals: { user: user, id: params[:id] } }
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def delete
  end
end
