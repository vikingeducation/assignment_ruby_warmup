def roll_dice(number_of_dice = 1)
  dice_total = 0

  number_of_dice.to_i.times do
    dice_total += (1 + rand(6))
  end

  puts dice_total
end