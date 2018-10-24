Rails.application.routes.draw do
  namespace :admin do
   resources  :books
  end
  devise_for :users
  root to: "books#index"

  resources :books

  resources :sales
end
