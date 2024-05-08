# PAST INPUTS CONTROLLER
# This controller manages the retrieval of past input records for various categories.
class PastInputsController < ApplicationController
  def index
    @steps = Step.all
    @water_intakes = WaterIntake.all
    @calories = Calorie.all
    @friends = Friend.all
    @cardio = Cardio.all
    @stretchings = Stretching.all
    @treadmills = Treadmill.all
    @strengths = Strength.all
    @weights = Weight.all
    @heights = Height.all
    @ages = Age.all
    @runnings = Running.all
    @running_goals = Runninggoal.all
    @sleepings = Sleeping.all
    @sleeping_goals = Sleepinggoal.all
    @weight_losses = Weightloss.all
    @weight_loss_goals = Weightlossgoal.all
  end
end
