########################################################
# stockpicker.rb                                       #
#                                                      #
# display the best time to buy/sell as stock based     #stock_
# on an array of stock prices                          #
#                                                      #
# Coded by: Stephen Kilgore                            #
########################################################

def stock_picker(stock_prices)
	max_buy_date, max_sell_date, profit, difference = 0,0,0,0
	
	(0..(stock_prices.length-2)).each do |buy|
		((buy+1)..stock_prices.length-1).each do |sell|
			difference = stock_prices[sell] - stock_prices[buy]

			if difference > profit
				max_buy_date = buy
				max_sell_date = sell
				profit = difference

			end
		end
	end
	answer = Array.new
	answer[0], answer[1] = max_buy_date, max_sell_date
	return answer
end

print "#{stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])} \n"

