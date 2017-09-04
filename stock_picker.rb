def stock_picker(stock_prices)
  highest_profit = {
    buy_day: 0,
    sell_day: 0,
    profit: 0
  }

  stock_prices.each_with_index do |price, index|
    for subsequent_stock in ((index + 1)..(stock_prices.size - 1))
      if stock_prices[subsequent_stock] - price > highest_profit[:profit]
        highest_profit[:buy_day] = index
        highest_profit[:sell_day] = subsequent_stock
        highest_profit[:profit] = stock_prices[subsequent_stock] - price
      end
    end
  end

  return Array[highest_profit[:buy_day], highest_profit[:sell_day]]
end
