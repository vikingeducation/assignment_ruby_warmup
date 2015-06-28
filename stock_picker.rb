def stock_picker(prices)
	buy_date = 0
	sell_date = 0
	profit = 0
	prices.each_with_index do |price, index|
		remaining_days = index + 1
		while remaining_days < prices.length
			if prices[remaining_days]-prices[index] > profit
				buy_date = index
				sell_date = remaining_days
				profit = prices[remaining_days]-prices[index]
			end
			remaining_days += 1
		end
	end
	return [buy_date, sell_date]
end


#puts (stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) == [2, 6])

=begin
1. method stock_picker
2. takes an array of stock prices on days
3. outputs the most profitable pair of days on which to buy and sell stock

a. take the prices array
b. compare difference between each entry and all rest in sequence
c. log buy date and sell date for highest difference
=end
