class SessionsController < ApplicationController
  def create
    session[:user_id] = auth['uid']
  end
  
  def auth
    request.env['omniauth.auth']
  end

end