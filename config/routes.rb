Rails.application.routes.draw do

  resources :users
  resources :dons

  get '/auth/facebook/callback' => 'sessions#create'

end
