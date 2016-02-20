    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :facebook, ENV['154827444901139'], ENV['14526aa172def30ca44eac36b04ff855']
    end