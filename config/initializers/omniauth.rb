Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end


# export FACEBOOK_KEY=152752638468151
#
# export FACEBOOK_SECRET=70c12d3f6144eee585dba4d6476fd573
