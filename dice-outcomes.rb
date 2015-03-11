# Method dice_outcomes 
# inputs = number of dice, number of rolls
# output = distribution of how many times
# each possible # came up 

def roll_dice(n)

	### This method simulates the rolling of n dice
	### and returns what # was rolled

	total = 0
	dice = 1
	while dice <= n
		total = total + rand(1..6)
		dice += 1
	end

	return total
end

def dice_outcomes(n, rolls)

	### This method visualizes the distribution of values
	### rolled when using n dice and 
	### rolling x times ("rolls")


	# every value in between lowest_possible and
	# highest_possible is a value that could show up
	# when rolling n dice

	lowest_possible = n
	highest_possible = n * 6

	# The below loop creates keys in "distribution" for
	# everything that could possibly be rolled, then sets
	# the value for each key to be 0 as default

	distribution = {}

	possible_value = lowest_possible
	while possible_value <= highest_possible
		distribution[possible_value] = 0
		possible_value += 1
	end

	# The below loop rolls the dice a given number of
	# times and updates the Distribution hash to keep track
	# of how often a specific number has been rolled

	times_rolled = 1
	while times_rolled <= rolls
		this_roll = roll_dice(n)
		distribution[this_roll] = distribution[this_roll] + 1
		times_rolled += 1
	end

	# The below block visualizes the distribution hash

	distribution.each do |value, frequency|
		visual = "#"
		if value < 10
			puts "#{value}:  " + visual * frequency
		else
			puts "#{value}: " + visual * frequency
		end
	end
	
end