def roll_dice(sides, num)
	sum = 0
	(num). times do
		sum += (rand(sides)+1)
	end
	return sum
end
