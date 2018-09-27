Rails.application.routes.draw do
  resources :users do
    get 'email', to: 'users#email'
  end

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
