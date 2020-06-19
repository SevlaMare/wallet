Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  root 'users#show'
end
