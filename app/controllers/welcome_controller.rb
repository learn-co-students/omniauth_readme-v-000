class WelcomeController < ApplicationController
  def home
    binding.pry
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end
end
