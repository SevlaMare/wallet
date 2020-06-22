Rails.application.routes.draw do
  resources :users,        only: [:index, :show, :new, :create]
  resources :sessions,     only: [:new, :create, :destroy]
  resources :transactions, only: [:new, :create, :destroy]
  resources :groups,       only: [:new, :create, :destroy]
  root 'users#show'
end
