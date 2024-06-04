Rails.application.routes.draw do
  root 'places#index'
  
  resources "entries"
  resources "places"
  resources "sessions", only: [:create]
  resources "users"
  get '/places', to: 'places#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # Other routes...
end