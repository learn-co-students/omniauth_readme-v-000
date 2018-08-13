Rails.application.routes.draw do
  root 'welcome#home'
  resource :sessions, only: [:create]
  get 'auth/facebook' => 'sessions#create'
  get 'auth/facebook/callback' => 'sessions#create'
end
