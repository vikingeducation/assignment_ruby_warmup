
# ____________________________________________________
# ******************Rolling Dice***********************
# ----------------------------------------------------

# Define method with a parameter for number of rolls. Set default value to 1. 
	def roll_dice(number_of_rolls = 1)    

		# Create a variable to hold the total to be returned.
		sum_of_rolls = 0

		number_of_rolls.times do
			#Generate a random number between 1 & 6.
			outcome = rand(6) + 1
			#Add the outcome to the total sum variable. 
			sum_of_rolls += outcome
		end

		# Return the final sum of all the rolls. 
		return sum_of_rolls
	end


# puts roll_dice(2)


# ____________________________________________________
# ******************Dice Outcomes**********************
# ----------------------------------------------------

def dice_outcomes(number_of_dice, times_to_roll)

	# Create a hash to track the number of times each value is rolled. 
	outcome_tracker = {}

	# Roll all the dice times_to_roll times
	times_to_roll.times do
		
		# Find a random number between 1 and 6 * number_of_dice 	
		max_sum = 6*number_of_dice
		outcome = rand(max_sum) + 1

		# determine if the outcome is already a key in the outcome_tracker
		if outcome_tracker.include?(outcome)
			
			#if it is, add 1 to its value
			outcome_tracker[outcome] += 1

			#if its not, create a key = to outcome and set its value to 1 
			else
				outcome_tracker[outcome] = 1
		end
	end



	# Print the chart 






return outcome_tracker


end





puts dice_outcomes(4, 20)








# colorHash.each do |codeType, color|
#   puts codeType + ':  ' + color
# end