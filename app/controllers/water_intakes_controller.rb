# WATER INTAKES CONTROLLER
# This controller manages the creation of new water intake records for users.
class WaterIntakesController < ApplicationController
  def new
    @water_intake = WaterIntake.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @water_intake = @user.water_intakes.new(water_intake_params) || @user.water_intakes.create(amount: 0)
  
    if @water_intake.save
      redirect_to new_water_intake_path, notice: 'Water intake updated successfully.'
    else
      render :new
    end
  end

  private

  def water_intake_params
    params.require(:water_intake).permit(:gallons)
  end
end
