require 'pry'

Rails.application.config.middleware.use OmniAuth::Builder do
	# binding.pry
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end