class SessionsController < ApplicationController
  def auth
    request.env['omniauth.auth']
  end
end
