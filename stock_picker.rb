#stock_picker method
#takes an array of stock prices
#finds most profitable two days to buy stocks
#then finds two most profitable days to sell those stocks
def stock_picker(prices)
  answer_array = []
  day_to_buy = 0
  day_to_sell = 0
  profit = prices[1] - prices[0]
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        if sell_price - buy_price > profit
          profit = sell_price - buy_price
          day_to_buy = buy_day
          day_to_sell = sell_day
        end
      end
    end
  end
  answer_array << day_to_buy
  answer_array << day_to_sell
  print answer_array
end


stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
stock_picker([65, 55, 65, 43, 32, 44, 56, 68, 23, 5])
stock_picker([33,54,57,23,12,40,68,32,46,60,35,79,34,5])
