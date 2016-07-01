def rolling_dice_outcomes(num_of_dice, rolls)
	die = [1,2,3,4,5,6]
	visual = {}
	visual.default = 0
	rolls.times do |roll|
		total = 0
		num_of_dice.times do 
			total +=  die.sample
		end
		visual[total] += 1
	end
	visual.sort.each do |key,value|
		p "#{key}: #{value}"
	end
end

rolling_dice_outcomes(3,100)