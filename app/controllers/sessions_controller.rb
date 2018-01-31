class SessionsController < ApplicationController
  
  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
    
    require 'pry'; binding.pry
    session[:user_id] = @user.id
 
    render 'welcome/home'
  end
  
  def destroy
    reset_session
    redirect_to root_path
  end
 
  private
 
  def auth
    request.env['omniauth.auth']
  end
  
end
