Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
  #ENV constant refers to a global hash for your entire computer environment
  #need two pieces of information from Facebook in order to
  #1) get authentication working:
    #1)the application key and
    #2)secret that will identify our app to Facebook.
end
