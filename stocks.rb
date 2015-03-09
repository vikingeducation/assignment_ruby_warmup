# Method that takes in an array that stores price
# for a give stock over a number of days (days 0, 1 ...)
# and outputs the most profitable 2 days to 
# buy the stock on

def stock_picker(prices)

	day_array = [] # temporarily store all possible profits
	best_profits = [] # store only each day's best outcome
	winning_pair = [] # store the best two days to buy on

	# the below loop calculates each possible profit for
	# each day (stored in day_array). then it only pushes 
	# the best possible profit for each day to best_profits.

	day = 0
	while day < prices.size - 1
		prices.each do |price|
			if prices.index(price) > day
				profit = price - prices[day] 
				day_array << profit
			end
		end

		best_profits << day_array.max
		day_array = []
		day += 1
	end

	# adding best day to winning_pair array
	winning_pair << best_profits.index(best_profits.max)

	# calculating and adding 2nd-best day to winning_pair
	sorted_best = best_profits.sort
	winning_pair << best_profits.index(sorted_best[-2])

	return winning_pair

end