def stock_picker(stock_prices)
  highest = {
    'days' => '',
    'profit' => 0
  }
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      if sell_price - buy_price > highest['profit'] && sell_day > buy_day
        highest['days'] = [buy_day, sell_day]
        highest['profit'] = sell_price - buy_price
      end
    end
  end
  highest
end