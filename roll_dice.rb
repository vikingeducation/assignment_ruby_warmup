def roll_dice(dice = 1)
  sum = 0
  dice.times do
    sum += (rand(6) + 1)
  end
  sum
end

roll_dice(4)