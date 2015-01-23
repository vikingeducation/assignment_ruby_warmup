def stock_picker(prices)
	current_max=0
	buy_index = 0
	sell_index = 0
	i=prices.size - 1
	# puts "i=#{i}!"
	j=prices.size - 1
	# puts "j=#{j}!"
	while i>=0
		# puts "Here, i =#{i}:"
		while j>=1
			profit = prices[i]-prices[j-1]
			# puts "\tprofit =#{profit}!"
			if profit > current_max
				current_max=profit
				sell_index=i
				buy_index=j-1
			end
			j=j-1
		end
		j=i-1
		i=i-1
	end
	puts "[#{buy_index}, #{sell_index}]"
	return [buy_index, sell_index]
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])