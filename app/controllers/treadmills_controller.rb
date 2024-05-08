# TREADMILLS CONTROLLER
# This controller manages the creation of new treadmill records for users.
class TreadmillsController < ApplicationController
  def new
    @treadmill = Treadmill.new
  end

  def create
    @user = current_user
    @treadmill = @user.treadmills.new(treadmill_params)
  
    if @treadmill.save
      redirect_to new_treadmill_path, notice: 'Treadmill updated successfully.'
    else
      render :new
    end
  end

  private

  def treadmill_params
    params.require(:treadmill).permit(:value)
  end
end
