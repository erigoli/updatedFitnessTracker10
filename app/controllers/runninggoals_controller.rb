# RUNNINGGOALS CONTROLLER
# This controller manages the creation of new running goal records for users.
class RunninggoalsController < ApplicationController
  def new
    @runninggoal = Runninggoal.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @runninggoal = @user.runninggoals.new(runninggoal_params)
  
    if @runninggoal.save
      redirect_to new_runninggoal_path, notice: 'Running Goal updated successfully.'
    else
      render :new
    end
  end

  private

  def runninggoal_params
    params.require(:runninggoal).permit(:value)
  end
end
