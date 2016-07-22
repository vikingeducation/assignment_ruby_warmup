def stock_picker(*input)
  buy_date = 0
  sell_date = 0
  largest_profit = 0

  #iterate through possible buy prices and the day of buy (value and index)
  input.each_with_index do |buy_price, buy_day|
    #iterate through possible sell days (starting at day 2, can't sell on the first day) and the day of sell (value and index)
    input[buy_day + 1..-1].each_with_index do |sell_price, sell_day|
      #if most profitable
      if (sell_price - buy_price) > largest_profit
        #set to largest profit
        largest_profit = sell_price - buy_price
        #set buy day (+1 because comp starts at day 0)
        buy_date = buy_day + 1
        #set sell day (+1 because comp counts from 0)
        sell_date = sell_day + buy_date + 1
      end
    end
  end
  puts "If you buy on day #{buy_date} and sell on day #{sell_date},\nYou'll earn a profit of \$#{largest_profit}."
end
#expect days 3 and 7, with profit of 16
stock_picker(44,30,24,32,35,30,40,38,15)