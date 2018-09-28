Rails.application.routes.draw do
  resources :users
  resources :posts
  get('/example', to: 'example#something', as: 'orlando')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
