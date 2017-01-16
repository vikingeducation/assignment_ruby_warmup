
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
  max_profit = 0
  best_days = []

  # Run through the possible buy days 
  	(stock_prices.length - 1).times do |buy_date|

  		# Subtract the buy date price from each possible sell date
  		(buy_date..(stock_prices.length - 1)).each do |sell_date|
  			profit = stock_prices[sell_date] - stock_prices[buy_date]

  			# Compare the difference to the max profit value to see if it is greater
  			if profit > max_profit
  				max_profit = profit 
  				best_days[0] = buy_date
  				best_days[1] = sell_date
  			end
  		end
  	end 

		print best_days
	end


# stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 


# ____________________________________________________
# ******************Anagrams**********************
# ----------------------------------------------------

def anagrams(original_word)

	# Make sure the given input is formatted correctly
	formatted_word= original_word.downcase.strip

	# Sort the letters so it can be compared accurately
	test_word = formatted_word.split("").sort.join

	# Create an array to hold anagrams as they appear
	anagram_array=[]


	File.open("enable.txt").readlines.each do |imported_word|  
		imported_word = imported_word.strip

		if imported_word != formatted_word

			if imported_word.split("").sort.join == test_word
				anagram_array << imported_word
			end

		end

	end

	print anagram_array
end


anagrams("Pears ")




