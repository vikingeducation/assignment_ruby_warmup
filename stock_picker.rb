# takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable
# days on which to first buy stock and then sell stock
# stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) #=> [2, 6]

def stock_picker(stock_prices)
  buy_day = 0
  sell_day = 0
  max_profit = -1.0/0 # -Infinity
  stock_prices.each_with_index do |bp, i|
    stock_prices[i+1..-1].each_with_index do |sp, j|
      if sp - bp > max_profit
        max_profit = sp - bp
        buy_day = i
        sell_day = j+i+1
      end
    end
  end
  buy_and_sell_days = [buy_day, sell_day]
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])