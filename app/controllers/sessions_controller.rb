class SessionsController
  def create
    raise params.inspect
  end

  def for_auth
    redirect_to "https://github.com/login/oauth/authorize"
  end
end