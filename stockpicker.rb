def stock_picker(price_array)

  max_profit = 0
  best_buy_day = 0
  best_sell_day = 0

  #check_buy_day =  0
  #check_sell_day = 0



  0.upto(price_array.size) do |check_buy_day|

    check_buy_day.upto(price_array.size) do |check_sell_day|

      check_profit = (price_array[check_sell_day].to_i - price_array[check_buy_day].to_i)

      if check_profit > max_profit
        best_buy_day = check_buy_day
        best_sell_day = check_sell_day
        max_profit = check_profit
      end

    end

  end

  return [best_buy_day, best_sell_day]

end