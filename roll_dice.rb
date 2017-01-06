def roll_dice(num_dice)
  sum = 0
  num_dice.times {sum += rand(1..6)}
  return sum
end
