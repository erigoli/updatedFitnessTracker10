# CALORIES CONTROLLER
# This controller manages the creation of new calorie records for users.
class CaloriesController < ApplicationController
  def new
    @calorie = Calorie.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @calorie = @user.calories.new(calorie_params) || @user.calories.create(amount: 0)
  
    if @calorie.save
      redirect_to new_calorie_path, notice: 'Calories updated successfully.'
    else
      render :new
    end
  end

  private

  def calorie_params
    params.require(:calorie).permit(:amount)
  end
end

