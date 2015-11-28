def roll_dice(num=1)
	result = 0
	num.times do |dice_no| 
		result += rand(6) + 1
	end
	return result
end

#puts roll_dice
#puts roll_dice(2)
#puts roll_dice(3)
#puts roll_dice(4)
#puts roll_dice(5)