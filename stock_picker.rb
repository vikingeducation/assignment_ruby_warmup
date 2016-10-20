# given (stock_prices) array, find most profitable days to buy then sell 
def stock_picker stock_prices	

	# deal with empty & 1-item arrays
	return "need at least 2 days of stock prices" if stock_prices.length <= 1

	# initialize
	profit = stock_prices[1] - stock_prices[0]
	profit_day_1 = 0
	profit_day_2 = 1

	# find profitable days
	0.upto(stock_prices.length - 2) do |day_1|
		(day_1+1).upto(stock_prices.length - 1) do |day_2| 
			if stock_prices[day_2] - stock_prices[day_1] > profit
				profit = stock_prices[day_2] - stock_prices[day_1]
				profit_day_1 = day_1
				profit_day_2 = day_2
			end  
		end
	end

	return [profit_day_1, profit_day_2]

end

# tests
puts stock_picker([44,30,24,32,35,30,40,38,15]).inspect
puts "------------------"
puts stock_picker([50]).inspect
puts "------------------"
puts stock_picker([]).inspect
puts "------------------"
puts stock_picker([500,1,188888,0,-60,10,1234,-1000000000]).inspect
puts "------------------"
puts stock_picker([1,1,1,1,1,1,1,1]).inspect