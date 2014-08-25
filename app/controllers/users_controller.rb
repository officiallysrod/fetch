class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.where(params[:id]).first
  end

  def new
    @user = User.new
    @is_signup = true
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id.to_s
      #add a redirect
    else
      render 'new'
    end
  end

  def edit
    @user = User.where(params[:id]).first
  end

  def update
    @user = User.where(params[:id]).first
    if @user.update_attributes(user_params)
      #add a redirect
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.where(params[:id]).first
    @user.destroy
    redirect_to root_path
  end

private

  def user_params
    params.require(:user).permit(:email, :fname, :lname, :dog_name, :bio, :password, :password_confirmation)
  end

end
