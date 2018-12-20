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
		request.env['ominauth.auth']
	end
  end		

   #def create
	#auth = request.env["omniauth.auth"]
	#user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || #User.create_with_omniauth(auth)     #session[:user_id] = user.id     #redirect_to root_url, notice: "Signed in!"
 # end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
