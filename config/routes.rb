Rails.application.routes.draw do

  root 'welcome#home'

  get 'welcome/home' => 'welcome#home'

  get '/auth/facebook/callback' => 'sessions#create'

end
