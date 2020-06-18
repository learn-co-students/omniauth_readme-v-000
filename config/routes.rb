Rails.application.routes.draw do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  root 'welcome#home'
end
