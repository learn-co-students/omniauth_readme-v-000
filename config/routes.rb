Rails.application.routes.draw do
  get '/welcome', to: 'welcome#home'
  get '/auth/facebook', to: 'static#home'
  get '/auth/facebook/callback', to: 'sessions#create'
  resources :sessions
end
