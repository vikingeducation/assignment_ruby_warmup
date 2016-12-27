# Write a method stock_picker which takes an array 
# of stock prices (prices on days 0, 1, ...) and 
# outputs the most profitable pair of days on which 
# to first buy the stock and then sell the stock

def stock_picker
  prices = [68, 40, 45, 15, 12, 34, 67, 11]
  high_price = prices.drop(1).max
  low_price = prices.min
  buy_day = prices.index(low_price) + 1
  sell_day = prices.index(high_price) + 1
  puts "Buy at #{low_price} on day #{buy_day}.  Sell at #{high_price} on day #{sell_day}."
end

stock_picker 




#Iterate through the array to find the 
#highest value that is not the first value.

#Then, iterate through the array to find the 
#lowest value before the highest value.

#The first value is the best sell day, 
#and the second value is the best buy day.

#Return index value of high 
#and low price for the day to buy and sell.

#How to stop iterating before sell_day?
