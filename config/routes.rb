Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "users#index"
resources :users
  # Defines the root path route ("/")
  # root "articles#index"
end
