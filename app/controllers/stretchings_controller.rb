class StretchingsController < ApplicationController
  def new
    @stretching = Stretching.new
  end

  def create
    @user = current_user
    @stretching = @user.stretchings.new(stretching_params)
  
    if @stretching.save
      redirect_to new_stretching_path, notice: 'Stretching updated successfully.'
    else
      render :new
    end
  end

  private

  def stretching_params
    params.require(:stretching).permit(:value)
  end
end
