
def roll_dice (dice=1, rolls)
  score = 0
  while dice > 0
    roll = rand(1..6).to_i
    score += roll
    dice -= 1
  end
  puts score
  puts ''
end

roll_dice(4)
roll_dice(2)
roll_dice(50)
roll_dice

