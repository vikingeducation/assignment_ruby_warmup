
def stock_picker(stock_prices)
	buy_window_prices = stock_prices.take(stock_prices.size - 1)
	sell_window_prices = stock_prices.drop(1)
	max_profit = 0
	buy_window_index = 0
	while buy_window_index < buy_window_prices.size
		buy_price = buy_window_prices[buy_window_index]
		sell_window_index = buy_window_index + 1
		while sell_window_index < sell_window_prices.size
			sell_price = sell_window_prices[sell_window_index]
   			profit = sell_price - buy_price
   			if(profit > max_profit)
   				max_profit = profit
   				day_to_buy = buy_window_index
   				day_to_sell = sell_window_index + 1
   			end
			sell_window_index = sell_window_index + 1
		end
   		buy_window_index = buy_window_index + 1
	end
	result = Array.new(3)
	result[0] = day_to_buy
	result[1] = day_to_sell
	result[2] = max_profit
	result
end
p stock_picker([17,3,6,9,15,8,6,20,10, 16])
p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])