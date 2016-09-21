Rails.application.config.middleware.use OmniAuth::Builder do
   provider :facebook, ENV['251539501906075'], ENV['01377dbe8a0bcd1fc8372853ca5ecd61']
end
#251539501906075
#01377dbe8a0bcd1fc8372853ca5ecd61
