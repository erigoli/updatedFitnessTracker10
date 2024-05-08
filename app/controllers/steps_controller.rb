# STEPS CONTROLLER
# This controller manages the creation of new step records for users.
class StepsController < ApplicationController
  def new
    @step = Step.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @step = @user.steps.new(step_params)
  
    if @step.save
      redirect_to new_step_path, notice: 'Steps updated successfully.'
    else
      render :new
    end
  end

  private

  def step_params
    params.require(:step).permit(:value)
  end
end
