my_stock_prices = [44, 30, 24, 32, 35, 30, 40, 38, 15]

def stock_picker(stock_prices)
  best_buy_and_sell_days = []
  best_profit_so_far = 0
  stock_prices.each_with_index { |buy_price, buy_day|
    stock_prices.each_with_index { |sell_price, sell_day|
      profit = sell_price - buy_price
      if (sell_day > buy_day) && (profit > best_profit_so_far)
        best_profit_so_far = profit
        best_buy_and_sell_days[0] = buy_day
        best_buy_and_sell_days[1] = sell_day
      end
    }
  }
  print best_buy_and_sell_days
end

stock_picker(my_stock_prices)