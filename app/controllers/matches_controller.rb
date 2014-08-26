class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.where(params[:id]).first
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(params.require(:match))

    # match = @match.save
    # user1 = current_user
    # user2 = current_user.likes.last...

    # usermatch1 = UserMatch.new(params.require(:user_match).permit(:user_id, :match_id))
    # usermatch1.user_id = user1.id
    # usermatch1.match_id = match.id

    # usermatch2 = UserMatch.new(params.require(:user_match).permit(:user_id, :match_id))
    # usermatch2.user_id = user2.id
    # usermatch2.match_id = match.id

  end

  def destroy
    @match = Match.where(params[:id]).first
    @match.destroy
    redirect_to users_path
  end

end
