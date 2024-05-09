# HEIGHTS CONTROLLER
# This controller manages the creation of new height records for users.
class HeightsController < ApplicationController
  def new
    @height = Height.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @height = @user.heights.new(height_params) || @user.heights.create(amount: 0)
  
    if @height.save
      redirect_to new_height_path, notice: 'Height updated successfully.'
    else
      render :new
    end
  end

  private

  def height_params
    params.require(:height).permit(:value)
  end
end
