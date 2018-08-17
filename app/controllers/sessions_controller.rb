class SessionsController < ApplicationController

  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['auth']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end

    binding.pry

    session[:user_id] = @user.id

    render 'welcome/home'
  end

  private

  def auth
    auth = request.env['omniauth.auth']
  end

end
