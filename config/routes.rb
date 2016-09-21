Rails.application.routes.draw do
  resources :users
  get '/login', to: 'welcome#home'
  get '/auth/facebook/callback', to: 'sessions#create'
end
