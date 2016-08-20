Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '532685980256441', 'b7d043fb9b001fa5d4db99f7ff25a046'
end