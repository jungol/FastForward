class CallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    # logger.debug request.env["omniauth.auth"]
    # logger.debug @user
    sign_in_and_redirect @user, :event => :authentication
  end
end