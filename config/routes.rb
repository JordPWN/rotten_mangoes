Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'

  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'movies#index'

end