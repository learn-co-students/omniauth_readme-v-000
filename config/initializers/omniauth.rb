Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end

# ENV constant refers to global hash for entire computer environment
# Store any key/value pairs in this hash - useful to keep credentials that
# we don't want to be seen on Git or Github 
