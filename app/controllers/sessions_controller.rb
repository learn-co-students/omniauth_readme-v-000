class SessionsController < ApplicationController
  def new
  end

  def create
    user=User.find_or_create_by(uid: auth["uid"]) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
    end
    session[:user_id]=user.id
    redirect_to home_path

  end

  def auth
    request.env['omniauth.auth']
  end

  def destroy
  end
end
