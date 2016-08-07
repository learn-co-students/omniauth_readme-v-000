Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get '/auth/facebook/callback' => 'sessions#create'
end
