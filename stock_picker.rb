def stock_picker(list_of_days)
  buy_day_pick = 0
  sell_day_pick = 0
  profit = 0
  buy_day = 0
  while buy_day < list_of_days.length
    sell_day = buy_day + 1
    while sell_day < list_of_days.length
      combo_profit = list_of_days[sell_day] - list_of_days[buy_day]
      if combo_profit >profit
        profit = combo_profit
        buy_day_pick = buy_day
        sell_day_pick = sell_day
      end
      sell_day += 1
    end
    buy_day += 1
  end
  puts buy_day_pick, sell_day_pick
  



end

stock_picker([44, 30, 32, 32, 15, 30, 37, 38, 15])