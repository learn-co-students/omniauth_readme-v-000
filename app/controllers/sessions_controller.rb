class SessionsController < ApplicationController
    def create
        @user = User.find_or_create_by(email: auth['email']) do |u|
            u.email = auth['info']['email']
            u.name = auth['info']['profile']
        end
   
      session[:user_id] = @user.id
   
      render 'welcome/home'
    end
   
    private
   
    def auth
      request.env['omniauth.auth']
    end
end