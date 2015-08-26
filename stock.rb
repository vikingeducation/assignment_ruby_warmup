#Takes an array of prices (index = days, values = prices)
#and outputs most profitable pair of days to first buy
#then sell the stock
def stock_picker(prices)
  max_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index do |buy, bday|
    prices[(bday+1..-1)].each_with_index do |sell, sday|
      cash_flow = sell - buy
      if cash_flow > max_profit
        max_profit = cash_flow
        buy_day = bday
        #sday starts from 0 so add (bday+1)
        sell_day = sday + (buy_day + 1)
      end
    end
  end

  puts "[#{buy_day} #{sell_day}]"
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])