class WelcomeController < ApplicationController
  def home
    @user = User.find(session[:user_id]) if session[:user_id]
  end
end
