class SessionsController < ApplicationController
	def create
		raise "Hello".inspect
		@user = User.find_or_create_by(:uid => auth['uid']) do |user|
			user.name = auth['info']['name']
			user.email = auth['info']['eamil']
			user.image = auth['info']['image']
		end

		session[:user_id] = @user.id

		render 'welcome/home'
	end

	private

	def auth
		request.env['omniauth.auth']
	end
end
