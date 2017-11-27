class SessionsController < ApplicationController

def create
  if auth_hash = request.env["omniauth.auth"]
    #logged in via OmniAuth
    oath_email = request.env["omniauth.auth"]["info"]["email"]
    if user = User.find_by(:email => oath_email)
      session[:user_id] = user.id
    else
      user = User.new(:email => oath_email)

      session[:user_id] = user.id
    end
  end
  "THIS WAS SUCCESSFUL?!"
   render 'welcome/home'
 end

 private

 def auth
   request.env['omniauth.auth']
 end
end
