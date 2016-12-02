def stock_picker(stocks)
  best_stocks = []
  biggest_difference = 0
  stock_to_buy = 0
  stock_to_sell = 0

  stocks.each_with_index do |price_to_buy, day_to_buy|

    stocks.each_with_index do |price_to_sell, day_to_sell|

      difference = price_to_sell - price_to_buy

      if day_to_sell > day_to_buy && difference > biggest_difference
        biggest_difference = difference
        stock_to_buy = day_to_buy
        stock_to_sell = day_to_sell
      end 

    end
  end
  best_stocks.push(stock_to_buy)
  best_stocks.push(stock_to_sell)
  puts "Buy on Day #{best_stocks[0]}"
  puts "Sell on Day #{best_stocks[1]}"
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])