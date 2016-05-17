def roll_dice(n)
  dice = [1,2,3,4,5,6]
  value = 0
  n.times do 
    value += dice.sample
  end
  value
end

p roll_dice(4)