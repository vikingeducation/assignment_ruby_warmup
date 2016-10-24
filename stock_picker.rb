def stock_picker(stock_prices_array)

  # need to iterate over array twice
  # once for buy day
  # once for sell day
  # can use Ruby each method

  final_buy_day = 0
  final_sell_day = 0
  largest_profit = 0

  stock_prices_array.each_with_index do |buy_amount, buy_day|
    stock_prices_array.each_with_index do |sell_amount, sell_day|
      if (sell_amount - buy_amount) > largest_profit && sell_day > buy_day
        final_buy_day = buy_day
        final_sell_day = sell_day
        largest_profit = sell_amount - buy_amount
      end
    end
  end

  puts "#{final_buy_day}, #{final_sell_day}"

end

prices = [44, 30, 24, 32, 35, 30, 40, 38, 15]

stock_picker(prices)