Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK KEY'], ENV['FACEBOOK_SECRET']
end
