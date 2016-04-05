class SessionsController < ApplicationController
  def create 
    @auth = auth
  end
  
  def auth 
    request.env['omniauth.auth']
  end
end
