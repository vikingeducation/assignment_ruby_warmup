def roll_dice(num_dice = 1)
  sum = 0
  num_dice.times do
    sum += (1 + rand(6))    
  end
  sum
end