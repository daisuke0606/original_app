Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    resources :comments, only: :create
    resources :orders, only: [:new, :create]
  end
  devise_for :users
  resources :orders, only: :index
end
