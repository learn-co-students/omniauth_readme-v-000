Rails.application.routes.draw do
  get '/facebook', to: 'static#home'
  get '/auth/facebook/callback' => 'sessions#create'
end
