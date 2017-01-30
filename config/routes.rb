Rails.application.routes.draw do
  root 'welcome#home'

  resources :sessions, only: [:create]

  get '/auth/facebook/callback' => 'sessions#create'
end
