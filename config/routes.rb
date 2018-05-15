Rails.application.routes.draw do
  resources :addresses
  resources :actor_movies
  resources :movies
  resources :categories
  resources :actors
  resources :directors

  get "/persons/new", to: "persons#new"
  post "/persons/create", to: "persons#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
