Rails.application.config.middleware.use OmniAuth::Builder do
  provider :GitHub, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end
