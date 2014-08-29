class RejectionsController < ApplicationController

  def new
    @rejection = Rejection.new
  end 

  def create
    @rejection = Rejection.new(rejection_params)
    @rejection.rejector = current_user
    @rejection.save
    redirect_to users_path
  end

private

  def rejection_params
    params.require(:rejection).permit(:rejector_id, :rejectee_id)
  end

end
