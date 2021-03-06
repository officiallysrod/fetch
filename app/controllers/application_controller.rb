class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  include ActionController::Serialization

  protect_from_forgery with: :exception
  serialization_scope :view_context

  helper_method :current_user

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  def default_serializer_options
    { root: false }
  end

end
