def stock_picker(stocks)
  if stocks.index(stocks.min) < stocks.index(stocks.max)
    return [stocks.min, stocks.max]
  end

  highest_profit = 0
  best_buy_date = nil
  best_sell_date = nil

  stocks.each_with_index do |stock1, index1|
    stocks.each_with_index do |stock2, index2|
      if index1 < index2 && stock2 - stock1 > highest_profit
        highest_profit = stock2 - stock1
        best_buy_date = index1
        best_sell_date = index2
      end
    end
  end

  [best_buy_date, best_sell_date]
end