def stock_picker input 
  
  ans1 = nil
  ans2 = nil
  
  highest_profit = 0
  
  input.each_with_index do |buy_price, buy_day|
    
    input.each_with_index do |sell_price, sell_day|
      days_profit = sell_price - buy_price
      if (sell_day > buy_day) && (days_profit > highest_profit)
        highest_profit = days_profit
        ans1 = buy_day
        ans2 = sell_day
      end
    end
  end
  
  [ans1, ans2]

end



p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
#=> [2, 6]