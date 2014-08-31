class RejectionsController < ApplicationController

  def new
    @rejection = Rejection.new
  end 

  def create
    @rejection = Rejection.new(rejection_params)
    @rejection.rejector = current_user
    
    #prevent user from rejecting someone if they have already liked them
    @rejection.save unless @rejection.rejectee.likers.include?(current_user)

    redirect_to :back
  end

private

  def rejection_params
    params.require(:rejection).permit(:rejector_id, :rejectee_id)
  end

end
