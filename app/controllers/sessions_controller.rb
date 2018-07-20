class SessionsController < ApplicationController

  def create
    #when we get our auth back, we find_or_create a new user using their facebook uid, 
    #then we set up our own object to mirror the stuff we wanted from facebook
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name=auth['info']['name']
      u.email=auth['info']['email']
      u.image=auth['info']['image']
    end

    #login by setting the session user id
    session[:user_id]=@user.id

    render 'welcome/home' #render the template
  end

  private

  #This appears to be called on line 6 above, using the omniauth request environment?
  def auth
    request.env['omniauth.auth']
  end    
end