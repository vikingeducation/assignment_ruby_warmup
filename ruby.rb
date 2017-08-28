roll_dice = 1 + rand(6)

def roll_dice(dice_num) #returns the sum of the outcomes of rolling each dice once in "dice_num" number of dices
  sum = 0
  dice_num.times do
    outcome = 1 + rand(6)
    sum += outcome
  end
  return sum
end


  
