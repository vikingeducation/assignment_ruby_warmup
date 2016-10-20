#rolldice.rb returns the result of rolling N 6-sided dice where N is the
#number of times the dice is rolled.

def roll_dice(num_of_dice=1)
  dice = (1..6).to_a
  return dice.sample

end

puts roll_dice(4)
puts roll_dice(2)
puts roll_dice
