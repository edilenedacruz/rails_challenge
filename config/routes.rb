Rails.application.routes.draw do
  root to: 'home#index'


  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: "logout"

  resources :users do
    resources :restaurants
  end

end
