Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1085234044886106", "d57025fa3b81c06a3d40903e6282987a"
end
