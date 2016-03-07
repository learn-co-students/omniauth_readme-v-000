class SessionsController < ApplicationController


  def create
    @user = User.find_or_create_by(uid: auth['uid'])
    @user.update(name: auth['info']['name'], email: auth['info']['name'])
    @user.save
    session[:user_id] = @user.id
  end

  def auth
    request.env['omniauth.auth']
  end

end
