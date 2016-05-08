# Write a method stock_picker which takes an array of stock 
# prices (prices on days 0, 1, ...) and outputs the most 
# profitable pair of days on which to first buy the stock 
# and then sell the stock

def stock_picker(stocks)
  # initialize profit and buying/selling times
  profit = stocks[1] - stocks[0]
  time_to_sell = 1
  time_to_buy = 0

  buy = 1 #loop through buy from first to second to last index
  while buy < stocks.length - 1 
    
    sell = buy + 1 #loop through sell from buy to last index
    while sell < stocks.length
      
      possible_profit = stocks[sell] - stocks[buy] 

      #adjust profit, selling/buying times if more profit can be made by buying/selling at new time
      if possible_profit > profit
        profit = possible_profit
        time_to_buy = buy
        time_to_sell = sell 
      end
      
      sell += 1
    end
    buy += 1
  end 

  [time_to_buy, time_to_sell]
end

p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 