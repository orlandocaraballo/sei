Rails.application.routes.draw do
  root 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index', as: 'users'

  # for creation
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  # displaying an individual user
  get '/users/:id', to: 'users#show', as: 'user'

  # editing a user
  get '/users/:id/edit', to: 'users#edit'
  put '/users/:id', to: 'users#update'
  
  # deleting a user
  delete '/users/:id', to: 'users#destroy'

  # the following is the same as line 5 thru 19
  # resources :users
end
