def stock_picker(day_prices)
	best_margin = -1
	in_n_out = []
	day_prices.length.times do |buy_day|
		buy_day.upto(day_prices.length - 1) do |sell_day|
			puts "buy_day: #{buy_day} sell_day: #{sell_day}"
			if day_prices[sell_day] - day_prices[buy_day] > best_margin and sell_day > buy_day
				in_n_out = [buy_day, sell_day]
				best_margin = day_prices[sell_day] - day_prices[buy_day]
			end
		end
	end
	in_n_out
end

puts stock_picker([5,4,7,2,8,1,6]).inspect