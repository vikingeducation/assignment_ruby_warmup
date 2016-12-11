# Write a method stock_picker which takes an array of stock prices
# (prices on days 0, 1, ...) and outputs the most profitable pair of days on
# which to first buy the stock and then sell the stock,

def stock_picker(prices)
  min_index, max_index = -1, -1
  min_diff = 1.0/0.0 # positive infinity

  i, j = 0, 1
  while i < prices.length - 1
    while j < prices.length
      if prices[i] - prices[j] < min_diff
        min_diff = prices[i] - prices[j]
        min_index, max_index = i, j
      end
      j += 1
    end
    i += 1
    j = i + 1
  end
  return min_index, max_index
end



p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
#=> [2, 6]