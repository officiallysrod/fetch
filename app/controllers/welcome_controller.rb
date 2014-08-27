class WelcomeController < ApplicationController

  def index
    @user = User.new
    @is_signup = true
  end
  
end
