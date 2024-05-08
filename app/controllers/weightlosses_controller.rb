class WeightlossesController < ApplicationController
  def new
    @weightloss = Weightloss.new
  end

  def create
    @user = current_user
    @weightloss = @user.weightlosses.new(weightloss_params)
  
    if @weightloss.save
      redirect_to new_weightloss_path, notice: 'Weight loss goal updated successfully.'
    else
      render :new
    end
  end

  private

  def weightloss_params
    params.require(:weightloss).permit(:value)
  end
end
