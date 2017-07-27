Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end



# The code is unfamiliar, but we can guess what's going on from the characteristically clear Rails syntax. We're telling our Rails app to use a piece of middleware created by OmniAuth for the Facebook authentication strategy.
