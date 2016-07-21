def stock_picker(stock_prices, currency = "bucks")
  buy_day = 0
  sell_day = 1
  max_profit = stock_prices[sell_day] - stock_prices[buy_day]
  stock_prices.each_with_index do | pot_buy_price, pot_buy_day |
    stock_prices.each_with_index do | pot_sell_price, pot_sell_day |
      if pot_sell_price - pot_buy_price > max_profit
        if pot_buy_day < pot_sell_day
          sell_day = pot_sell_day
          buy_day = pot_buy_day
          max_profit = stock_prices[sell_day] - stock_prices[buy_day]
        end
      end
    end 
  end
  puts "Buy on day #{buy_day} for #{stock_prices[buy_day]}; sell on day #{sell_day} for #{stock_prices[sell_day]}. Make #{(max_profit)} #{currency} per share!"
  [buy_day, sell_day]
end

stock_picker([59, 99, 78, 22, 11, 91, 0, 89])