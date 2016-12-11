def stock_picker(prices)

  max = 0
  max_profit=[]


  prices.each_with_index do |buy_price, buy_day|

    prices.each_with_index do |sell_price, sell_day|

      if sell_day > buy_day
        diff = sell_price - buy_price

        if diff > max
          max = diff
          max_profit = [buy_day, sell_day]
        end
      end
    end
  end

  print max_profit
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
