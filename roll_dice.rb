def roll_dice(n=1)
  dice = [1,2,3,4,5,6]
  results_of_roll = []
  n.times do results_of_roll << dice.sample
  end
  sum = 0
  results_of_roll.each {|num| sum += num}
  print results_of_roll
  print sum
end

roll_dice(4)
roll_dice(12)
