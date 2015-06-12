closing_price = [44, 30, 24, 32, 35, 30, 40, 38, 15]
last_day = closing_price.size - 1
profit = 0
buy_date = 0
sell_date = 0


closing_price.each do |op|
	start = closing_price.index(op)+1
	(start..last_day).to_a.each do |cp|
		if closing_price[cp] - op > profit 
			profit = closing_price[cp] - op
			buy_date = closing_price.index(op) + 1
			sell_date = cp + 1
		end
	end
end

puts "buy on day #{buy_date}, sell on day #{sell_date}, profit is #{profit}"


