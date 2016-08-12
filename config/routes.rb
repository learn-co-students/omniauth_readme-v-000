Rails.application.routes.draw do
  
  root 'welcome#home'
  get '/auth/facebook/callback' => 'sessions#create'
  # note the controller and action you use don't matter, but to be semantic, we 
  # should use the sessions controller because we're going to log the user in 
  # by creating a session.
 
end