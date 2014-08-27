class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(params.require(:like).permit(:liker_id, :likee_id))
    @like.liker_id = current_user
    @like.likee_id = User.find(params[:id])
    @current_likee = @like.likee

    if @like.save
      #if the likee of the current like object has already liked the current user
      if @current_likee.likees.include?(current_user)
        
        # creates a new match object that will belong to both users through UserMatch
        @match = Match.new(params.require(:match))
        match = @match.save

        #creates a new user_match object belonging to the first of the two users who are being matched
        user_match_1 = UserMatch.new(user_match_params)
        user_match_1.user_id = current_user.id
        user_match_1.match_id = match.id

        #creates a new user_match object belonging to the second of the two users who are being matched
        user_match_2 = UserMatch.new(user_match_params)
        user_match_2.user_id = @current_likee.id
        user_match_2.match_id = match.id

        flash.now[:alert] = 'Match made!'

      end

      redirect_to users_path
      flash.now[:alert] = 'Like successfully saved!'

    else
      redirect_to users_path
      flash.now[:alert] = 'No match made!'
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
