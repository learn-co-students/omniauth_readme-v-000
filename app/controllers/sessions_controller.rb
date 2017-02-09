class SessionsController < ApplicationController

  def create
  	binding.pry
  	@auth = request.env['omniauth.auth']
  end

   def auth
    request.env['omniauth.auth']
  end
  
end