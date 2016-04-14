Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end


# export FACEBOOK_KEY=860781947382363
# export FACEBOOK_SECRET=09c76dc0adb1488ba19f75179a8b93f3

