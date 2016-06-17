def roll_dice (number_of_dice=1)
  die = (1..6).to_a
  dice_rolled = 0
  sum_of_rolls = 0
  while dice_rolled < number_of_dice
    sum_of_rolls += die.sample
    dice_rolled += 1
  end
  return sum_of_rolls
end

roll_dice(3)