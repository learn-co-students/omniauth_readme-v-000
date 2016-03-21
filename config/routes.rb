Rails.application.routes.draw do
  resources :sessions
  get '/auth/facebook/callback' => 'sessions#create'
end
