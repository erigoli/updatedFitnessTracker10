class CardiosController < ApplicationController
  def new
    @cardio = Cardio.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @cardio = @user.cardios.new(cardio_params)
  
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
