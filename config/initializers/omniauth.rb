Rails.application.config.middleware.use OmniAuth::Builder do
  #need to get ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'] from Facebook
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end