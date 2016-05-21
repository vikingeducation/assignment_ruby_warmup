def roll_dice(sides = 1)
	sum = 0
	sides.times do |index|
		sum += (rand(6) + 1)
	end
	sum
end

roll_dice(4)