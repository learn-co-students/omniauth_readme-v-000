class WelcomeController < ApplicationController
  def home
  end

  def profile
    redirect_to root_path unless session[:user_id]
  end

end
