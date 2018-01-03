class SessionsController < ApplicationController

  def create
    # auth_hash must be accessed as below
    auth = request.env['omniauth.auth']
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
    
    session[:user_id] = @user.id
    render 'welcome/home'
  end
end
