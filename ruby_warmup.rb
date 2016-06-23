def roll_dice(n=1)
	sum = 0
	n.times { sum += rand(7) }
	sum
end

def dice_outcomes(dice,n)
	#get a hash of empty strings first
	#create an empty hash 
	#for 'n_times' times, roll 'dice' number of dice
	#add a '#' to the value of the key (with the key obviously being the value of the dice roll)
	
	outcomes = {}
	possible_values = Array(dice..(6*dice))
	possible_values.each {|possible_value| outcomes[possible_value] = ""}
	puts outcomes; puts
	outcomes[8] << '#'
	puts outcomes

	n.times do
		roll = 1
		dice.times do  
			a_roll = rand(1..6)
			roll += a_roll
		end
		outcomes[roll] << "#"
	end
	return outcomes

end

def fibonacci n
	#start with an array of the first two numbers
	#add the last two numbers of the array together and add it to the end of the array until the array is of n length

	sequence = [1, 1]
	until sequence.length == n 
		new_value = sequence[-1] + sequence[-2]
		sequence.push(new_value)
	end
	return sequence
end

def stock_picker stock_values 
	#iterate through the array, keeping track of indices
	#produce an array of remaining days each iteration
	#calculate the difference between the current value and the highest value in the remaining days array (highest- current)
	#if that difference is greater than the previous calculated greatest difference, update the greatest difference value
	#and store the index of the current day and the day of the max price from the remaining array
	greatest_difference = 0
	sell_day = 0
	buy_day = 0
	most_profitable_pair = []

	index = 0 
	while index < stock_values.length - 1
		current_value = stock_values[index]
		remaining_prices = stock_values[(index+1)..(stock_values.length-1)]
		next_highest = remaining_prices.max
		next_highest_index = remaining_prices.index(next_highest) + index + 1
		current_difference = next_highest - current_value
		if current_difference > greatest_difference 
			greatest_difference = current_difference
			buy_day = index
			sell_day = next_highest_index
		end
		index += 1
	end
	most_profitable_pair[0], most_profitable_pair[1] = buy_day, sell_day
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])