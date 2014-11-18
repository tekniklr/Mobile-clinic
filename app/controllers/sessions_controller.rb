class SessionsController < ApplicationController
  
  def login
    logger.info "************ Login page requested"
    page_title 'login', true
    if Rails.env.development?
      logger.info "************ dev enviromnent - whatevs"
      # just log in as the first user
      user = User.first
      user or raise UserNotAuthorized
      session[:user_id] = user.id
      flash[:notice] = 'Signed in!'
      redirect_to root_url
    end
  end
  
  def failure
    flash[:error] = params[:message]
    redirect_to root_url
  end
  
  def validate
    logger.info "************ validating login"
    auth = request.env["omniauth.auth"]
    logger.info "************ provider: #{auth["provider"]}"
    logger.info "************ uid: #{auth["uid"]}"
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
    user or raise UserNotAuthorized
    logger.info "************ user found: #{user.handle}!"
    session[:user_id] = user.id
    flash[:notice] = 'Signed in!'
    redirect_to root_url
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = 'Logged out'
    redirect_to root_url  
  end
  
end