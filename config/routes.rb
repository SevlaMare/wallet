Rails.application.routes.draw do
  resources :users,        only: [:show, :new, :create]
  resources :sessions,     only: [:new, :create, :destroy]
  resources :groups,       only: [:index, :show, :new, :create]
  resources :transactions, only: [:index, :new, :create]
  get       '/external',   to: 'transactions#external'
  root 'users#show'
end
