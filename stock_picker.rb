def stock_picker(prices)
	max_profit = max_profit_day_one = max_profit_day_two = 0
	prices.each_with_index do |day_one, i|
		prices.each_with_index do |day_two, j|
			if j > i
				current_profit = day_two - day_one
				if current_profit > max_profit
					max_profit = current_profit
					max_profit_day_one = i
					max_profit_day_two = j
				end
			end
		end
	end
	[max_profit_day_one, max_profit_day_two]
end

# puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]).inspect