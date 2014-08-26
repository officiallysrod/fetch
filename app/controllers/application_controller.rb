class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  # Login is now accessible from any controller
  def login
    @user_login = User.new
    @is_login = true
  end
  
  # Setup is now accessible from any controller
  def signup
    @user_signup = User.new
    @is_signup = true
  end

end
