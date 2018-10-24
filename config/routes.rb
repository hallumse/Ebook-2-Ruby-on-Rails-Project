Rails.application.routes.draw do
  namespace :admin do
   resources  :books
  end
  devise_for :users
  root to: "books#index"

  resources :books do
    resources :sales, except: :index
  end
resources :sales, only: :index
end
