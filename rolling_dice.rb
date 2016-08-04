def roll_dice dice_quantity = 1
	total = 0
	
	dice_quantity.times do 
		total += rand(1..6)
	end
	total
end