# Write a method, stock_picker, which takes an array of stock prices (prices on days 0, 1, ...) and
# outputs the most profitable pair of days on which to first buy the stock and then sell the stock

def stock_picker(stock_prices)
  most_profitable_days = []
  most_profit = 0
  (0..stock_prices.length-2).each do |start_day|
    (start_day +1..stock_prices.length-1).each do |end_day|
      if stock_prices[end_day]-stock_prices[start_day]>most_profit
        most_profit = stock_prices[end_day] - stock_prices[start_day]
        most_profitable_days[0] = start_day
        most_profitable_days[1] = end_day
      end
    end
  end
  most_profitable_days
end

prices = [14, 6, 43, 49, 494, 3, 2, 44, 1]
puts stock_picker(prices)
