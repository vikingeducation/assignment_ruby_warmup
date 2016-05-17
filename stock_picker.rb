def stock_picker(prices)
  days = []
  max_profit = 0
  (0..(prices.length-2)).each do |start|
    ((start+1)..(prices.length-1)).each do |finish|
      profit = prices[finish] - prices[start]
      max_profit = profit if profit > max_profit
      days = [start, finish] if max_profit == profit
    end
  end
  days

end

p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])