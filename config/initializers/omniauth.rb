Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'c8286d1b27eb8d002e10', '84ed7f0715ea3f5f1d6cc3f2ae42b9af53a243bc'

  provider :facebook, '1280587901979507', '9c180dfafcc22cc9510e675d7d781f58'

  provider :google, '380403753376-nobl4g1p0s4bu0c44s00cntrhlr1frks.apps.googleusercontent.com', '8OlB5XREUvlXMthQCifQjylS'

  # project name: swt-google-oauth-test1
  # project ID:   booming-client-150818
  # key:

  # You need credentials to access APIs.
  # Enable the APIs you plan to use and then
  # create the credentials they require.
  #
  # Depending on the API, you need
  #   an API key,
  #   a service account, or an OAuth 2.0 client ID.
  #   Refer to the API documentation for details.
  #
  #   OAuth client
  # Here is your client ID
  # 380403753376-nobl4g1p0s4bu0c44s00cntrhlr1frks.apps.googleusercontent.com

  # Here is your client secret
  # 8OlB5XREUvlXMthQCifQjylS


end
