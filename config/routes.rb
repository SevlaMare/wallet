Rails.application.routes.draw do
  resources :users,        only: [:index, :show, :new, :create]
  resources :sessions,     only: [:new, :create, :destroy]
  resources :groups,       only: [:index, :new, :create, :destroy]
  resources :transactions, only: [:index, :new, :create, :destroy]
  root 'users#show'
end
