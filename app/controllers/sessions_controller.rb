class SessionsController < ApplicationController
    def create
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.image = auth['info']['image']
        end

        session[:user_id] = @user.id

        #render 'welcome/home_logged_in'
        render 'welcome'
    end

    def auth
        #@auth ||= request.env['omniauth.auth']
        request.env['omniauth.auth']
    end
end