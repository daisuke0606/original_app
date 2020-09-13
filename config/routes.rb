Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    resources :comments, only: :create
  end
  devise_for :users
end
