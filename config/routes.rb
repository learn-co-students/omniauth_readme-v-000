Rails.application.routes.draw do
  resources :sessions, only: [:create]
  get '/static/login', to: 'static#login'
  get 'auth/facebook/callback', to: 'sessions#create'
end
