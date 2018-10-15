Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"

  get "books", to: "books#show"
  get "books", to: "books#new"
  get "books", to: "books#create"
  get "books", to: "books#index"
end
