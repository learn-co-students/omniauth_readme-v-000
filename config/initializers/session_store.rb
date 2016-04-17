# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_omniauth_lab_session'

Rails.application.config.middleware.use OmniAuth::Builder do
      provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end
