# Write a method stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock

def stock_picker(prices)
  highest_profit = 0
  best_day_pair = []
  prices[0..-2].each_with_index do |buying_price, buying_day|
    prices[buying_day+1..-1].each_with_index do |selling_price, selling_day|
      profit = selling_price - buying_price
      if profit > highest_profit
        highest_profit = profit
        best_day_pair = [buying_day, selling_day+buying_day+1]
      end
    end
  end
  best_day_pair
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])