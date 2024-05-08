# USER MODEL with associations and methods
class User < ApplicationRecord
  has_secure_password
  has_many :weightlossgoals
  has_many :weightlosses
  has_many :runnings
  has_many :runninggoals
  has_many :sleepings
  has_many :sleepinggoals
  has_many :weights
  has_many :heights
  has_many :ages
  has_many :cardios
  has_many :stretchings
  has_many :treadmills
  has_many :strengths
  has_many :steps
  has_many :water_intakes
  has_many :calories, class_name: 'Calorie'
  def total_calories_consumed
    last_calorie = calories.last
    last_calorie.present? ? last_calorie.amount : nil
  end

  def total_water_consumed
    last_water_intake = water_intakes.last
    last_water_intake.present? ? last_water_intake.gallons : nil
  end

  def total_steps_consumed
    last_step = steps.last
    last_step.present? ? last_step.value : nil
  end

  def total_cardios_consumed
    last_cardio = cardios.last
    last_cardio.present? ? last_cardio.value : nil
  end

  def total_stretchings_consumed
    last_stretching = stretchings.last
    last_stretching.present? ? last_stretching.value : nil
  end

  def total_treadmills_consumed
    last_treadmill = treadmills.last
    last_treadmill.present? ? last_treadmill.value : nil
  end

  def total_strengths_consumed
    last_strength = strengths.last
    last_strength.present? ? last_strength.value : nil
  end

  def total_weights_consumed
    last_weight = weights.last
    last_weight.present? ? last_weight.value : nil
  end

  def total_heights_consumed
    last_height = heights.last
    last_height.present? ? last_height.value : nil
  end

  def total_ages_consumed
    last_age = ages.last
    last_age.present? ? last_age.value : nil
  end

  def total_weightlossgoals_consumed
    last_weightlossgoal = weightlossgoals.last
    last_weightlossgoal.present? ? last_weightlossgoal.value : nil
  end

  def total_weightlosses_consumed
    last_weightloss = weightlosses.last
    last_weightloss.present? ? last_weightloss.value : nil
  end

  def total_runnings_consumed
    last_running = runnings.last
    last_running.present? ? last_running.value : nil
  end

  def total_runninggoals_consumed
    last_runninggoal = runninggoals.last
    last_runninggoal.present? ? last_runninggoal.value : nil
  end

  def total_sleepings_consumed
    last_sleeping = sleepings.last
    last_sleeping.present? ? last_sleeping.value : nil
  end

  def total_sleepinggoals_consumed
    last_sleepinggoal = sleepinggoals.last
    last_sleepinggoal.present? ? last_sleepinggoal.value : nil
  end

end
