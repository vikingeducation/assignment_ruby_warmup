####################################### => #################
# Dice.rb                                              #
#                                                      #
# roll x number of dice y number of times and print    #
# a visual representation of results                   #
#                                                      #
# Coded by: Stephen Kilgore                            #
########################################################

def roll_dice(roll_times = 1)
	answer = 0
	roll_times.times do
		answer += rand(1..6)
	end
	return answer
end

def dice_outcomes(dice_num, roll_times)

	roll_outcomes = Hash.new(0)

	roll_times.times do
		current_roll = roll_dice(dice_num)
		roll_outcomes[current_roll] += 1	
	end

	# iterate through the min possible and max possible number range for dice rolls and print result
	(dice_num..dice_num*6).each do |i|
		count = roll_outcomes[i]
		print "#{i}: "
		if (count != nil)
			count.times do
				print '#'
			end
		end
		print "\n"
	end
end

dice_outcomes(1, 6)