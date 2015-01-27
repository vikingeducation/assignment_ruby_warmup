def stock_picker(daily_prices)
  greatest_profit = 0
  best_buy_date = 0
  best_sell_date = 0

  buy_date = 0
  while buy_date < (daily_prices.length - 1) do
    sell_date = buy_date + 1
    while sell_date < daily_prices.length do
      profit = daily_prices[sell_date] - daily_prices[buy_date]
      if profit > greatest_profit
        best_buy_date = buy_date
        best_sell_date = sell_date
        greatest_profit = profit
      end
      sell_date += 1
    end
    buy_date += 1
  end
  [best_buy_date, best_sell_date]
end