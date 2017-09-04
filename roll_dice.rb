def roll_dice(rolls = 1)
  roll_total = 0
  rolls.times do
    roll_total += rand(1..6)
  end
  return roll_total
end
