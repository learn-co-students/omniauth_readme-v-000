OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '145475757890-6vkgglp5m70vfkj93l9ud4j10dqq9oa4.apps.googleusercontent.com', 'juwKn5qvpgPnLp5_pg1oAPKP', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end