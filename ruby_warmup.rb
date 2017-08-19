def roll_dice(dice_number = 1)
  roll = rand(1..6)
  dice = dice_number - 1
  dice > 0 ? roll + roll_dice(dice) : roll
end
