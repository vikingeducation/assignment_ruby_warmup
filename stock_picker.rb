def stock_picker(stocks)

highest_profit = 0
best_days = []

stocks.each_with_index do |buying_price, index|
  stocks.drop(index + 1).each_with_index do |selling_price, selling_index|
  	if selling_price > buying_price && (selling_price - buying_price) > highest_profit
  	  highest_profit = selling_price - buying_price
  	  best_days = []
  	  best_days << index
  	  best_days << (selling_index + index + 1)

  	end
  end
end
return best_days
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
