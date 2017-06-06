Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '121866768396366', 'c930511ca2bc7986ea8b8eedf298f67c'
end