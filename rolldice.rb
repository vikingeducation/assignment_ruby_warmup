#Write a method roll_dice which returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1)

def roll_dice(n=1)
  result = 0
  n.times do
    dice = rand(6) + 1 
    result += dice
  end
 result
end

puts roll_dice(4)
puts roll_dice(2)
puts roll_dice


#sample array to pull out specific part of array