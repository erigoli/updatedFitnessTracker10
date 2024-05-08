# AGES CONTROLLER
# This controller manages the creation of new age records for users.
class AgesController < ApplicationController
  def new
    @age = Age.new
  end

  def create
    @user = current_user 
    @age = @user.ages.new(age_params)
  
    if @age.save
      redirect_to new_age_path, notice: 'Age updated successfully.'
    else
      render :new
    end
  end

  private

  def age_params
    params.require(:age).permit(:value)
  end
end
