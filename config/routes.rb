Rails.application.routes.draw do
  root 'items#index'
  resources :items, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  devise_for :users
end
