def stock_picker (stock_prices)
  big_difference = 0
  best_days = Array.new(2)

  (stock_prices.length - 1).times do |buy|
    (buy..(stock_prices.length - 1)).each do |sell|
      difference = stock_prices[sell] - stock_prices[buy]
      if difference > big_difference
        big_difference = difference
        best_days[0] = buy
        best_days[1] = sell
      end
  end
end
puts best_days
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
