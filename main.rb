def roll_dice number_of_dice=1
	(number_of_dice.times.map {Random.rand(1..6)}).inject(:+)
end

puts roll_dice(2)
puts roll_dice(4)
puts roll_dice()
puts "-"*9

def dice_outcomes(number_of_dice, dice_rolls)
	dice_stats = {}
	dice_rolls.times do
		current_roll = roll_dice(number_of_dice)
		#Add dice roll to stats hash
		if dice_stats[current_roll].nil?
			dice_stats[current_roll] = 1
		else
			dice_stats[current_roll] += 1
		end
	end

	#Visual output of stats of hash
	dice_stats.sort.each do | key, value|
		puts key.to_s + ': ' + value.to_s
	end
end

dice_outcomes(3,100)
puts "-"*9