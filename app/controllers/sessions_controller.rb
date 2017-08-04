class SessionsController < ApplicationController
  require 'pry'
  def create
    @user = User.find_or_create_by(uid:auth['uid']) do |u|
      u.email = auth['info']['email']
      u.name = auth['info']['name']
      u.image = auth['info']['image']
    end
    # binding.pry
    session[:user_id] = @user.id
    render 'welcome/home'
  end

  def logout
    session.delete(:user_id)
    redirect_to root_path
  end
  private

  def auth
    request.env['omniauth.auth']
  end

end
