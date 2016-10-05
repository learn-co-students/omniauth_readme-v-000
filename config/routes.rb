Rails.application.routes.draw do

  get '/login' => 'static#home', as: 'login'
  get '/auth/facebook/callback' => 'sessions#create'
 
# Note that the controller and action you use don't matter, but it's most logical to use the SessionsController because we're going to log the user in by creating a session.
end
