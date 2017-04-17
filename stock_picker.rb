def stock_picker(stock_prices=[])
  buy_day=0
  sell_day=0
  high_price=0
  highest_price=0
  highest_profit=0
  highest_profit_overall=0

  stock_prices.each_with_index do |price, day|
    remaining_day_prices= stock_prices[day..-1]
    remaining_day_prices.each_with_index do |re_price, re_price_day|
          if (re_price - price) > highest_profit
            highest_profit= (re_price - price)
            buy_day= day
            sell_day= re_price_day
          end
        end
  end
  if highest_profit >0 then
    puts "The best time to buy is on day #{buy_day}."
    puts "The best time to sell is on day #{sell_day}."
    puts "This will yield a profit of #{highest_profit}."
  else puts "This is a bad stock. Please do not buy."
  end
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
#stock_picker([17,3,6,9,15,8,6,1,10])
#stock_picker([25,2,10,9])
#stock_picker([10,12,5,3,20,1,9,20])
#stock_picker([10,9,8,7,6])
#stock_picker([18,17,17,16,15])
