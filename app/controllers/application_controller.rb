require 'exceptions'
class ApplicationController < ActionController::Base
  include Exceptions
  protect_from_forgery
  
  rescue_from Exceptions::UserNotAuthorized, :with => :user_not_authorized
  
  helper_method :current_user
  
  before_filter :get_directions
  
  # https://github.com/rails/rails/issues/671
  def routing_error
    respond_to do |format|
      format.html { render '404', :status => 404 }
      format.any  { redirect_to :action => 'routing_error', :format => 'html' }
    end
  end
  
  protected
  
  def page_title(title, display = false)
    @page_title = title ? title : nil
    @title_display = display
  end
  
  
  def current_user  
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    return @current_user
  end
  
  def is_admin?
    (current_user and current_user.admin?) or raise UserNotAuthorized
  end
  
  def get_directions
    @directions = Rails.cache.fetch('directions') do
      blurb = Blurb.find_by_name("Directions (header)")
      !blurb.blank? ? blurb.content : ''
    end
  end
  
  private
  
  def user_not_authorized
    flash[:error] = "You do not have access to this page. If you believe you should have access, please contact the site owner."
    redirect_to root_url
  end
  
end
