# Simulates rolling N die.
def roll_dice(rolls=1)
	sum = 0
	rolls.times do
    sum += (1 + rand(6))
  end
  return sum
end

puts roll_dice
puts roll_dice(2)
puts roll_dice(4)