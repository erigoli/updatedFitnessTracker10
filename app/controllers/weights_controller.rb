# WEIGHTS CONTROLLER
# This controller manages the creation of new weight records for users.
class WeightsController < ApplicationController
  def new
    @weight = Weight.new
  end

  def create
    @user = current_user
    @weight = @user.weights.new(weight_params)
  
    if @weight.save
      redirect_to new_weight_path, notice: 'Weight updated successfully.'
    else
      render :new
    end
  end

  private

  def weight_params
    params.require(:weight).permit(:value)
  end
end
