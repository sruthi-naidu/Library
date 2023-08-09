Rails.application.routes.draw do
  get 'user/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "libraries/:library_id/books", to: "books#index"
end
