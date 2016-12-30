
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


puts roll_dice(2)


