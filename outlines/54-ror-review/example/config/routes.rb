Rails.application.routes.draw do
  root to: "home#index"

  resources :users
  resources :posts
  resources :addresses

  get "/users/:user_id/addresses/:address_id", to: "users#associate_user_to_address", as: :user_address
end
