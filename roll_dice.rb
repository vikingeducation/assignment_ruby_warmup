def roll_dice(rolls)
  sum = 0

  rolls.times do
    sum += rand(1..6)
  end
end

