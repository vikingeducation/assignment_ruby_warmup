def single_roll
  (1..6).to_a.sample
end

def roll_dice(number_of_dice=1)
  dice_rolled = 0
  total_score = 0
  while dice_rolled < number_of_dice
    total_score += single_roll
    dice_rolled += 1  
  end
  return total_score
end
