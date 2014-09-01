class WelcomeController < ApplicationController

  def index
    @user = User.new
    @is_signup = true
    redirect_to users_path if current_user
  end
  
end
