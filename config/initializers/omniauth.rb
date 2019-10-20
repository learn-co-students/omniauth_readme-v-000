# https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-12-authentication/omniauth
# Next, we'll need to tell OmniAuth about our app's OAuth credentials.
# Create a file named config/initializers/omniauth.rb. It will contain the following lines:
# new code start
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end
# new code end
# The code is unfamiliar, but we can guess what's going on from the
# characteristically clear Rails syntax. We're telling our Rails app to use a
# piece of middleware created by OmniAuth for the Facebook authentication strategy.
