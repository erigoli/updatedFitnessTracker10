class RunningsController < ApplicationController
  def new
    @running = Running.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @running = @user.runnings.new(running_params)
  
    if @running.save
      redirect_to new_running_path, notice: 'Running updated successfully.'
    else
      render :new
    end
  end

  private

  def running_params
    params.require(:running).permit(:value)
  end
end
