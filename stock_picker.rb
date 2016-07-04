def stock_picker(stock_prices)
  puts "For stock prices: #{stock_prices}:"
  buy_date = 0
  sell_date = 0
  largest_profit = 0

  stock_prices.each_with_index do |buy_price, buy_day|
    # puts "Buy day #{buy_day}, buy price #{buy_price}"
    
    stock_prices[buy_day+1..-1].each_with_index do |sell_price, sell_day|
      # puts "Sell day #{sell_day}, sell price #{sell_price}"

      if (sell_price - buy_price) > largest_profit
        largest_profit = sell_price - buy_price
        buy_date = buy_day
        sell_date = sell_day + buy_date + 1
      end
    end
  end
  puts "If you buy on day #{buy_date} and sell on day #{sell_date}, you'll earn a profit of #{largest_profit}."
end

stock_picker([rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100)])
