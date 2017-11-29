# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
use Rack::Session::Cookie, secret: 'abc123'

use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET']
end
run Rails.application
