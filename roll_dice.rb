def roll_dice(n = 1)
	dice_values = (1..6).to_a
	sum = 0
	n.times	do |i|
		sum += dice_values.sample
	end
	sum
end

puts "Rolling 1 dice and result is #{roll_dice}"
puts "Rolling 4 dice and result is #{roll_dice(4)}"
puts "Rolling 3 dice and result is #{roll_dice(3)}"
