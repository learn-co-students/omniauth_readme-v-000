Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['461570397513483'], ENV['8e43d10d87b129d4a5b2d83ed893d72e']
end
