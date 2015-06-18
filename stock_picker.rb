# The stock market question (The second interview question I was given).
# Assumptions: There IS a best time to buy and then sell the stock
# This means no homogenous [44,44,44,44,44] or strictly decreasing values [44,43,42,41,40]
def stock(lst)
  best_days = [-1,-1]
  profit = 0
  lst.each_with_index do |val, index|
    # For each given day, find the best day to sell AFTER that date.
    day_profit = 0
    day_pair = [-1, -1]
    lst[index..-1].each_with_index do |val2, j|
      if val2 - val > day_profit
        day_pair = [index, j + index]
        day_profit = val2 - val
      end
    end
    
    # If the maximum profit of the given day is higher than our stored profit we have a new best buy/sell pair.
    if day_profit > profit
      profit = day_profit
      best_days = day_pair
    end
  end
 
  return best_days
end
 
puts stock([44, 30, 24, 32, 35, 30, 40, 38, 15]) # returns [2,6], the solution to the original problem.

# returns [8, 13], an input value my interview solution would've failed.
puts stock([44, 30, 24, 32, 35, 30, 40, 38, 15, 16, 17, 18, 17, 90295])
