def stock_picker(prices)
	max_profit = max_profit_day_one = max_profit_day_two = 0
	(0...prices.length).each do |i|
		((i + 1)...prices.length).each do |j|
			day_one = prices[i]
			day_two = prices[j]
			current_profit = day_two - day_one
			if current_profit > max_profit
				max_profit = current_profit
				max_profit_day_one = i
				max_profit_day_two = j
				puts "#{day_two.to_s} - #{day_one.to_s} = #{current_profit}"
			end
		end
	end
	[max_profit_day_one, max_profit_day_two]
end

# puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]).inspect