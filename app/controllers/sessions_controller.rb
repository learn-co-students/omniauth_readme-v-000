class SessionsController < ApplicationController
  def create
    @auth = {}
    @auth[:uid] = auth['uid']
    @auth[:info] = {}
    @auth[:info][:name] = auth['info']['name']
    @auth[:info][:email] = auth['info']['email']
  end

  def auth
    request.env['omniauth.auth']
  end
end
