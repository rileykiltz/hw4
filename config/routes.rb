Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"
  get '/places', to: 'places#index'
  post '/login', to: 'sessions#create'
end