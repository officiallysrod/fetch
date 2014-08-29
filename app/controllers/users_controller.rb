class UsersController < ApplicationController

  def index
    available_users
    @like = Like.new
    @rejection = Rejection.new
  end

  def show
    @user = User.find(params[:id])
    render :edit if @user == current_user
  end

  def new
    @user = User.new
    @is_signup = true
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to users_path
    else
      redirect_to root_path
    end
  end

  def edit
    @user = User.where(params[:id]).first
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      #add a redirect
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.where(params[:id]).first
    @user.destroy
    reset_session
    redirect_to root_path
  end

private

  def user_params
    params.require(:user).permit(:fname, :lname, :dog_name, :bio, :email, :password, :password_confirmation)
  end

  def available_users
    @users = []
    User.all.each do |user|
      unless user == current_user
        @users.push(user)
      end
    end
  end

end
