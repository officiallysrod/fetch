class SessionsController < ApplicationController
  def new
    @user = User.new
    @is_login = true
    #redirect_to user_path(current_user) if current_user
  end

  def create
    user = User.where(email: params[:user][:email].downcase).first

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id.to_s
      redirect_to user_path(current_user.id)
    else
      flash.now[:error] = "Your email address or password is incorrect."
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
