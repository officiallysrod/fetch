class UsermatchesController < ApplicationController
  def new
    @usermatch = UserMatch.new
  end

  def create
    @usermatch = UserMatch.new(params.require(:usermatch).permit(:user_id, :match_id))
  end

  def destroy
    @usermatch = UserMatch.where(params[:id]).first
    @usermatch.destroy
    redirect_to users_path
  end
end
