def stock_picker(stocks)
  buy_day = 0 
  sell_day = 0 
  profit = 0 
  
  stocks.each_with_index do | first_day , first_index |
    stocks.each_with_index do | second_day , second_index |
      
      current_profit = second_day - first_day
      
      if (first_index < second_index) && (current_profit > profit)
        buy_day = first_index
        sell_day = second_index
        
        profit = current_profit
      end
    end
  end
  
  puts "Buy on day #{buy_day} and sell on day #{sell_day}!"
  puts "Your profit is #{profit} per share!"
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])