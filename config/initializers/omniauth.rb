Rails.application.config.middleware.use
OmniAuth::Builder do
  provider :facebook, ENC['FACEBOOK_KEY'],
  ENV['FACEBOOK_SECRET']
end