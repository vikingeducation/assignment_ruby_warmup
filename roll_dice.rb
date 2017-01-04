def roll_dice(dice = 1)
	roll = 0
	while dice > 0
		dice_roll = rand(1..6).to_i
		roll += dice_roll
		dice -=1
	end
	puts roll 
	puts ''
end

roll_dice(4)
roll_dice(2)

