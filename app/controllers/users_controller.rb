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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
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
    params.require(:user).permit(:fname, :lname, :dog_name, :bio, :email, :password, :password_confirmation, :profile_pic)
  end

  def available_users
    # @users = []
    # User.all.each do |user|
    #   unless user == current_user
    #     @users.push(user)
    #   end
    # end

    # @users = User.find_by_sql("SELECT * FROM users WHERE id = #{current_user.id};")

    #query to return all users who have not been liked by and not been rejected by current_user, 
    #as well as users who have not rejected the current user
    @users = User.find_by_sql("SELECT u.* FROM users AS u 
      LEFT OUTER JOIN likes AS l_requestee ON u.id = l_requestee.likee_id AND l_requestee.liker_id = #{current_user.id} 
      LEFT OUTER JOIN rejections AS r_rejector ON u.id = r_rejector.rejector_id AND r_rejector.rejectee_id = #{current_user.id} 
      LEFT OUTER JOIN rejections AS r_rejectee ON u.id = r_rejectee.rejectee_id AND r_rejectee.rejector_id = #{current_user.id} 
      WHERE u.id != #{current_user.id} AND l_requestee.id IS NULL AND r_rejector.id IS NULL AND r_rejectee.id IS NULL;")
  end

end
