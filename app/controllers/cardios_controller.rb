# CARDIOS CONTROLLER
# This controller manages the creation of new cardio records for users.
class CardiosController < ApplicationController
  def new
    @cardio = Cardio.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @cardio = @user.cardios.new(cardio_params) || @user.cardios.create(amount: 0)
  
    if @cardio.save
      redirect_to new_cardio_path, notice: 'Cardio updated successfully.'
    else
      render :new
    end
  end

  private

  def cardio_params
    params.require(:cardio).permit(:value)
  end
end
