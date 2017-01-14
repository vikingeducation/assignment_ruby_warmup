
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

	max_sum = 6*number_of_dice

	# Create a hash to track the number of times each value is rolled. 
	outcome_tracker = {}

	# Roll all the dice times_to_roll times
	times_to_roll.times do
		
		# Find a random number between number of dice (min) and max_sum
		outcome = (number_of_dice - 1) + (rand((max_sum+1) - number_of_dice) + 1)

		# determine if the outcome is already a key in the outcome_tracker
		if outcome_tracker.include?(outcome)
			
			#if it is, add 1 to its value
			outcome_tracker[outcome] += 1

			#if its not, create a key = to outcome and set its value to 1 
			else
				outcome_tracker[outcome] = 1
		end
	end



	# Print the chart from leaset to greatest outcome
	number_of_dice.upto(max_sum) do |possible_outcome| 

		# check to see if the outcome has been rolled
		if outcome_tracker.include?(possible_outcome)
			puts "#{possible_outcome}: " + ("#" * outcome_tracker[possible_outcome])
		end

	end

end

# puts dice_outcomes(4, 5)




# ____________________________________________________
# ******************Fibonacci**********************
# ----------------------------------------------------

def fibonacci (numbers_in_sequence)
	sequence_array =[1, 1]

	numbers_in_sequence.times do 
		next_number = sequence_array[-1] + sequence_array[-2]
		sequence_array << next_number
	end

	return sequence_array
end


# print fibonacci(9)



# ____________________________________________________
# ******************Stock Picker**********************
# ----------------------------------------------------

def stock_picker(stock_prices)
  

  buy_day = 0 
	sell_day = stock_prices.length - 1
	


# Subtract stock_prices[first_day] from stock_prices[last_day] and Set	max_profit = the difference. 
	max_profit = stock_prices[sell_day] - stock_prices[buy_day]
	best_days_to_trade = [buy_day, sell_day]


	until sell_day == 0 
		puts sell_day

								  while buy_day < sell_day 
										buy_price = stock_prices[buy_day]
										sell_price = stock_prices[sell_day] 
										profit = sell_price - buy_price
										print [buy_day, sell_day, profit]
										puts " "

											if profit > max_profit
												max_profit = profit
												best_days_to_trade = [buy_day, sell_day]
											end 	

										buy_day += 1 
									end

		sell_day -= 1
	end
		# end


		print best_days_to_trade

	end

end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 