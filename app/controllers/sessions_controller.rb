class SessionsController < ApplicationController
  def create
  end

  def auth
    request.env['omniauth.auth']
  end

end
