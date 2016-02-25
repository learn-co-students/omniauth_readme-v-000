class SessionsController < ApplicationController

  def create
    #binding.pry
    #user = User.find_or_create_by(:id => auth['uid']) do |u|
    #  u.info = auth['info']['name']
    #  u.email = auth['info']['email']
    #end
    #session[:user_id] = user.id
    @auth = auth
  end

  def auth
    request.env['omniauth.auth']
  end

end
