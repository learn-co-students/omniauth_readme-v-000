Rails.application.routes.draw do
  root 'welcome#home'
  get '/auth/google/callback' => 'sessions#create'
end
