class SessionsController < ApplicationController
  before_action :authenticate, only: :secret

  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user
      sign_in user
      # session['user_id'] = user.id
      redirect_to "/secret"
    else
      redirect_to "/login", alert: "Failed login."
    end
  end

  def new
    
  end


  def secret
    
  end

  def authenticate
    @user = current_user
    redirect_to "/login" unless @user
  end
end
