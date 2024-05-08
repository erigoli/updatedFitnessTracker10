class WeightlossgoalsController < ApplicationController
  def new
    @weightlossgoal = Weightlossgoal.new
  end

  def create
    @user = current_user
    @weightlossgoal = @user.weightlossgoals.new(weightlossgoal_params)
  
    if @weightlossgoal.save
      redirect_to new_weightlossgoal_path, notice: 'Weight loss goal updated successfully.'
    else
      render :new
    end
  end

  private

  def weightlossgoal_params
    params.require(:weightlossgoal).permit(:value)
  end
end
