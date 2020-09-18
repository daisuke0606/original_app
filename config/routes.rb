Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    resources :comments, only: :create
    resources :orders, only: [:create, :new]
  end
  devise_for :users
  # resources :orders, only: [:create, :new, :index]
  resources :orders, only: :index
end
