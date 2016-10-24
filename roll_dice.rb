def roll_dice(num=1)
  dice_rolls = []
  total = 0

  num.times do |dice|
    dice_rolls.push(rand(6)+1)
  end

  dice_rolls.each{|x| total+=x}
  return total
end

roll_dice(4)
roll_dice(2)
roll_dice