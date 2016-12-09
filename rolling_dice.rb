  # Write a method roll_dice which returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1). 

def roll_dice(n = 1)
  sum = 0
  n.times do
    sum += [1,2,3,4,5,6].sample
  end
  return sum
end

puts roll_dice(4)
puts roll_dice(2)
puts roll_dice