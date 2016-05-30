def stock_picker(daily_prices)

	#get array of daily prices
	#search for highest value in array after day of purchase
	#compare that days high to current high
	#Higest value found by taking day - minimum in array after that day
	highest_profit = 0
	highest_profit_days = []
	counter = 0

	while counter < daily_prices.length - 1
		max_day_price = daily_prices[counter+1..-1].max
		profit = daily_prices[counter+1..-1].max - daily_prices[counter]
		if profit > highest_profit
			highest_profit_days = [counter, daily_prices.index(max_day_price)]
			highest_profit = profit
		end
		counter += 1
	end

	highest_profit_days
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])