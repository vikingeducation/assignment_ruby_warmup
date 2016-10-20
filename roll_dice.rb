def roll_dice num_dice=1

	# initialize
	sum = 0; 

	# roll dice
	num_dice.times do 
		sum += 1 + rand(6)
	end

	return sum

end

# tests
puts roll_dice(4)
puts "------------------"
puts roll_dice(2)
puts "------------------"
puts roll_dice
puts "------------------"
puts roll_dice(4)
puts "------------------"
puts roll_dice(2)
puts "------------------"
puts roll_dice	