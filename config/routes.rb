Rails.application.routes.draw do

  root 'splash#index'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :update, :destroy]
  resources :tracks do
    get 'number_of_votes', on: :collection
  end
  resources :votes, only: [:create, :destroy]
end
