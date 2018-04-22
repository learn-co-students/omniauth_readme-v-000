Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['184965932135216'],
ENV['443f8c91e1c040f38d6577c0a8fc0622']
end
