class StrengthsController < ApplicationController
  def new
    @strength = Strength.new
  end

  def create
    @user = current_user
    @strength = @user.strengths.new(strength_params)
  
    if @strength.save
      redirect_to new_strength_path, notice: 'Strength updated successfully.'
    else
      render :new
    end
  end

  private

  def strength_params
    params.require(:strength).permit(:value)
  end
end
