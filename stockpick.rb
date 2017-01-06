# Write a method stock_picker which takes an array 
# of stock prices (prices on days 0, 1, ...) and 
# outputs the most profitable pair of days on which 
# to first buy the stock and then sell the stock

def stock_picker(stock_prices)

  max_profit = 0
  best_days = []

  #Loop through stock prices taking in the buying price and the buying index.

  stock_prices.each_with_index do |buying_price, index|

    #While in that loop, loop through stock prices adding one to get the sell price.
    (index+1).upto(stock_prices.length - 1) do |selling_index|
      selling_price = stock_prices[selling_index]

    #check to see what the profit would be if you subtracted the buying price from the selling price.
      profit = selling_price - buying_price

    #Update the maximum profit each time.  Use .max on the array to ensure you 
    #return only the highest profit.
      if profit > max_profit
        max_profit = profit
        best_days = [index, selling_index]
      end

    end
  end
  best_days
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

