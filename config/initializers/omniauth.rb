Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['573357412867803'], ENV['4d2e78fe950d9cff8fec39b20be6f01e']
end
