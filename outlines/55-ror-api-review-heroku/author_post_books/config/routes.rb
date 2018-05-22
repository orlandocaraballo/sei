Rails.application.routes.draw do
  resources :authors do
    get "/books/:book_id", to: "authors#add_book", as: "add_book"
    delete "/books/:book_id", to: "authors#destroy_book", as: "destroy_book"
  end

  resources :books
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
