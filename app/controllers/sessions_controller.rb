# Madw with the following command:
# rails g controller sessions create (--no-test-framework)
#     create  app/controllers/sessions_controller.rb
#     create  app/views/sessions
#     create  app/views/sessions/create.html.erb
#     create  app/helpers/sessions_helper.rb
#     create  app/assets/javascripts/sessions.coffee
#     create  app/assets/stylesheets/sessions.scss

# https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-12-authentication/omniauth
# Our SessionsController will be pretty simplistic, with a lone action
# (and a helper method to DRY up our code a bit):
# new code start
class SessionsController < ApplicationController
  def create
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
# new code end
