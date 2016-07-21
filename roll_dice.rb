def roll_dice(rolls=1)
  total = 0
  rolls.times do
    total = total + (rand(6) + 1)
  end
  total
end
puts roll_dice(4)
puts roll_dice(2)
puts roll_dice