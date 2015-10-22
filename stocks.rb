

#################################################
## Stock Picker
#################################################

# Write a method that takes an array of historical stock prices for a single stock (prices on days 0, 1, 2...), and outputs the most profitable pair of days (indices) on which you should have first bought and then sold the stock.

# For example:
#  prices = [ 44, 30, 24, 32, 35, 30, 40, 38, 15 ]    # e.g., $44, $30, $24...
#   stock_picker( prices )
#    # => [ 2, 6 ]     buy at $24, sell at $40 == $16 profit

# **** Code below here ****

prices = [ 44, 30, 24, 32, 35, 30, 40, 38, 15 ]

# First, what's the max return for each day in the array? - outputs an array of that max returns
# Only look at sells for following days

max_returns = []
days_minus_one = prices.length - 1

prices.each_with_index do |buy_price, index|
  max_returns << prices[index..days_minus_one].max - buy_price
end

# What's the max of the max returns array?  What index?  This gives first in pair of days
buy_day_index = max_returns.index(max_returns.max)
first_sell_day = buy_day_index + 1
sell_day_index = prices.index(prices[first_sell_day..days_minus_one].max)


puts "Buy on day #{buy_day_index}, sell on day #{sell_day_index}."


