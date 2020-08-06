Rails.application.config.middleware.use OmniAuth::Builder do
  # tells rails app to use a piece of middleware created by OmniAuth for the Facebook authentication strategy
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end
