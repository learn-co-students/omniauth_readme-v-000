Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :github, 'c8286d1b27eb8d002e10', '84ed7f0715ea3f5f1d6cc3f2ae42b9af53a243bc'

  provider :facebook, '1280587901979507', '9c180dfafcc22cc9510e675d7d781f58'
end



# URL Blocked: This redirect failed because the redirect URI
# is not whitelisted in the app’s Client OAuth Settings.
# Make sure Client and Web OAuth Login are on and
# add all your app domains as Valid OAuth Redirect URIs.


# Warning
# Can't Load URL: The domain of this URL isn't included in the
# app's domains. To be able to load this URL, add all domains
# and subdomains of your app to the App Domains field in
# your app settings.
