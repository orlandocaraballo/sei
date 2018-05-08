Rails.application.routes.draw do
  root "users#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/edge-case", to: "home#index"
  
  # restful routes
  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show"

  # get "/users/new", to: "users#new"
  # post "/users", to: "users#create"

  # get "/users/edit/:id", to: "users#edit"
  # put "/users/:id", to: "users#update"

  # delete "/users/:id", to: "users#destroy"

  resources :users
end
