def stock_picker(stock_prices)
  max_profit = 0
  index_low = 0
  index_high = 0
  max_index = stock_prices.length - 1

  stock_prices.each_with_index do |stock_price, index|
    future_stock_prices = stock_prices[(index + 1)..max_index]
    future_stock_prices.each.with_index(index + 1) do |future_stock_price, i|
      new_profit = future_stock_price - stock_price
      if new_profit > max_profit
        max_profit = new_profit
        index_low = index
        index_high = i
      end
    end
  end
  [ index_low, index_high ]
end

