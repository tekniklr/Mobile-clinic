class SessionsController < ApplicationController
  
  def login
    logger.info "************ Login page requested"
    page_title 'login', true
    if current_user
      logger.info "************ already logged in as #{current_user.handle} (user ID #{current_user.id})"
      redirect_to root_url
    elsif Rails.env.development?
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
    user = User.find_or_create_by_provider_and_uid(auth["provider"], auth["uid"])
    user.name ||= auth["info"]["name"]
    if auth["provider"] == 'facebook'
      user.handle ||= auth["info"]["first_name"]
    elsif auth["provider"] == 'twitter'
      user.handle ||= auth["info"]["nickname"]
    end
    user.save
    logger.info "************ user: #{user.handle}!"
    (user && user.admin?) or raise UserNotAuthorized
    logger.info "************ user is an admin"
    session[:user_id] = user.id
    flash[:notice] = 'Signed in!'
    redirect_to root_url
  end
  
  def logout
    session[:user_id] = nil
    @current_user ||= nil
    flash[:notice] = 'Logged out'
    redirect_to root_url  
  end
  
end