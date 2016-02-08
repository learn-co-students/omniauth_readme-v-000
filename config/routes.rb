Rails.application.routes.draw do

  get '/home', to: 'static#home'
  get '/auth/facebook/callback', to: 'sessions#create'
end
