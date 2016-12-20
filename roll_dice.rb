# write a method roll_dice which returns result of rolling N 6-sided dice 
# where N is input to the method (default should be 1)
# roll_dice(4) #=> 18 # rolled 4 dice
# roll_dice(2) #=> 4 # rolled 2 dice
# roll_dice #=> 1 # rolled 1 die

def roll_dice(n = 1)
  dice_values = (1..6).to_a
  sum = 0
  n.times do
    sum += dice_values.sample 
  end
  sum 
end

puts roll_dice(4)
puts roll_dice(2)
puts roll_dice