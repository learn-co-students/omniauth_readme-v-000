Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end

# <script>
#   window.fbAsyncInit = function() {
#     FB.init({
#       appId      : '{your-app-id}',
#       cookie     : true,
#       xfbml      : true,
#       version    : '{api-version}'
#     });
      
#     FB.AppEvents.logPageView();   
      
#   };

#   (function(d, s, id){
#      var js, fjs = d.getElementsByTagName(s)[0];
#      if (d.getElementById(id)) {return;}
#      js = d.createElement(s); js.id = id;
#      js.src = "https://connect.facebook.net/en_US/sdk.js";
#      fjs.parentNode.insertBefore(js, fjs);
#    }(document, 'script', 'facebook-jssdk'));
# </script>
