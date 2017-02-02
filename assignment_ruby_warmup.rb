def roll_dice(dice_number = 1)
  count = 0

  dice_number.times do
    roll = rand(6) + 1
    count += roll
  end

  return count
end