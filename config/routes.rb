Rails.application.routes.draw do
  get '/', to: 'welcome#home', as: 'welcome'
  get '/auth/facebook/callback', to: 'sessions#create'
end
