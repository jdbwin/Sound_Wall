Rails.application.routes.draw do

  root 'splash#index'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :update, :destroy]
  resources :tracks, only: [:index, :new, :create, :update, :destroy]
end
