class WelcomeController < ApplicationController
  def home
    if logged_in?
      @user = current_user
    end
    session.clear
  end
end
