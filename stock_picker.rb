def stock_picker array_price

# Set the Variables of buying and selling day, and profit

	buy = 0
	sell = 1
	profit = array_price[sell]-array_price[buy]

# Loop through each day

	array_price.each_with_index do |buy_price, buy_day|


		unless buy_day == array_price.length

			array_price.each_with_index do |sell_price, sell_day|

				# Can only sell after buy, and if better profit, save days and profit

				unless sell_day < buy_day

					if (sell_price - buy_price) > profit

						buy = buy_day
						sell = sell_day
						profit = sell_price - buy_price
					end
				end
			end
		end
	end

	return "best profit if buy day #{buy} and sell day #{sell} for #{profit} profit"
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
