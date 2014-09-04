class RejectionsController < ApplicationController

  respond_to :html, :json

  def new
    @rejection = Rejection.new
  end 

  def create
    @rejection = Rejection.new(rejection_params)
    @rejection.rejector = current_user
    
    #prevent user from rejecting someone if they have already liked them
    @rejection.save unless @rejection.rejectee.likers.include?(current_user)

    if @rejection.persisted?
      render json: @rejection, status: :created
    end
  end

private

  def rejection_params
    params.require(:rejection).permit(:rejector_id, :rejectee_id)
  end

end
