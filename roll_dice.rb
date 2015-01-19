def roll_dice (num=1) 
  total_roll = 0
  num.times do 
    total_roll += (1..6).to_a.sample
  end
  return total_roll
end
