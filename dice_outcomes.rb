def roll_dice number_of_dice
  sum_of_dice = 0;
  number_of_dice.times do
    sum_of_dice += (1+rand(6))
  end
  sum_of_dice
end

def dice_outcomes(number_of_dice, number_of_rolls)
  dice_outcomes_array = Array.new((number_of_dice*6)+1, 0)
  number_of_rolls.times do
    outcome_of_roll = roll_dice(number_of_dice)
    dice_outcomes_array[outcome_of_roll] = dice_outcomes_array[outcome_of_roll] + 1
  end
  dice_outcomes_array
end

def graphically_display_outcomes dice_outcomes_array
  dice_outcomes_array.each_with_index do |item, index|
    if (item == 0)
      next
    end
    graphical_representation_of_results = Array.new(item, "#")
    puts "#{index}: \t#{graphical_representation_of_results.join}"
  end
end

graphically_display_outcomes(dice_outcomes(3, 100))