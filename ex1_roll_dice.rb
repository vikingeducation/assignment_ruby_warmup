# Write a method roll_dice which returns the result of rolling N 
# 6-sided dice where N is the input to the method (the default 
# should be 1).

def roll_dice(num_dice = 1)
  result = 0

  die = (1..6).to_a
  num_dice.times do
    result += die.sample
  end

  return result
end



puts roll_dice(4)
#=> > random number between 1 and 24
puts roll_dice(2)
#=> > random number between 1 and 12
puts roll_dice
#=> > random number between 1 and 6