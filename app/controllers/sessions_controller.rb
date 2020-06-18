class SessionsController < ApplicationController

  def create
    # if auth_hash = request.env['omniauth.auth']
    #   oauth_email = request.env['omniauth.auth']['info']['email']
    #   if @user = User.find_by(:email => oauth_email)
    #
    #     session[:user_id]= @user.id
    #     redirect_to root_path
    #   else
    #     @user = User.new(:email => oauth_email)
    #     if @user.save
    #       session[:user_id] = @user.id
    #       redirect_to root_path
    #     else
    #       raise @user.errors.full_messages.inspect
    #     end
    #   end
    # else
    #   render 'sessions/new'
    # end
    @user = User.find_or_create_by(uid: auth['uid']) do |u|

      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
    session[:user_id] = @user.id
    render 'welcome/home'
  end

  private
  def auth
    request.env['omniauth.auth']
  end
end
