#stockpicker.rb takes an array of stock prices (prices on days 0, 1, ...)
#and outputs the most profitable pair of days on which to first buy the stock
#and then sell the stock.

def stock_picker(stock_prices)
  best_buy_price = [100]
  best_buy_day = []
  best_sell_price = [0]
  best_sell_day = []
  answer = []

  stock_prices.each_with_index do |price,day|
    if price < best_buy_price[0] && price != stock_prices[-1]
      best_buy_price.clear
      best_buy_price << price
      best_buy_day.clear
      best_buy_day << day
    end
  end

  stock_prices.each_with_index do |price,day|
    if price > best_sell_price[0] && price != stock_prices[0]
      best_sell_price.clear
      best_sell_price << price
      best_sell_day.clear
      best_sell_day << day
    end
  end

  answer << best_buy_day
  answer << best_sell_day
  answer.flatten!
  print answer
end

print stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
