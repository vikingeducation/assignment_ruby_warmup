def stock_picker(prices)
  current_high = 0
  best_days = []
  
  (prices.length).times do |i|
    (prices.length-1).downto(i) do |j|
      profit = prices[j]-prices[i]
      if profit > current_high
        current_high = profit
        best_days = [i, j]
      end
    end
  end
  puts best_days
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])