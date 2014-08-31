class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(like_params)
    @like.liker = current_user
    @current_likee = @like.likee

    #prevent user from liking someone if they have already rejected them
    @like.save unless @current_likee.rejectors.include?(current_user)

    if @like.persisted? 
      
      #if the likee of the current like object has already liked the current user
      if @current_likee.likees.include?(current_user)
        
        # creates a new match object that will belong to both users through UserMatch
        match = Match.new
        match.save

        #creates a new user_match object belonging to the first of the two users who are being matched
        user_match_1 = UserMatch.new
        user_match_1.user_id = current_user.id
        user_match_1.match_id = match.id
        user_match_1.save

        #creates a new user_match object belonging to the second of the two users who are being matched
        user_match_2 = UserMatch.new
        user_match_2.user_id = @current_likee.id
        user_match_2.match_id = match.id
        user_match_2.save

      end

      redirect_to :back

    else
      redirect_to :back
    end
  end

private

  def like_params
    params.require(:like).permit(:liker_id, :likee_id) 
  end

  def user_match_params
    params.require(:user_match).permit(:user_id, :match_id)
  end

end
