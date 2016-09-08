Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['298279057213747'], ENV['90a75b5a405300e520cc985c4145ccb1']
end
