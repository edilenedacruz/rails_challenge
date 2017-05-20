Rails.application.routes.draw do
  root to: 'home#index'


  get '/login', to: 'sessions#new', as: "login"

  resources :users


end
