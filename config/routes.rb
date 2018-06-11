Rails.application.routes.draw do
  root 'welcome#home'
  get '/auth/facebook/callback' => 'sessions#create'
  get '/logout', to: 'sessions#logout'
  post '/logout', to: 'sessions#logout'
end
