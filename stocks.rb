

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

# Looping variables for storing best return days and return while working through array.
best_buy_day = 0
best_sell_day = 0
max_return = 0

# Loop through buy days
prices.each_with_index do |buy_price, buy_index|

  # Loop through remaining sell days
  prices[(buy_index+1)..(prices.length)].each_with_index do |sell_price, net_sell_index|

    # Reset best data if surpassed
    if sell_price - buy_price > max_return
      best_buy_day = buy_index
      best_sell_day = net_sell_index + buy_index + 1
      max_return = sell_price - buy_price
    end
  end
end

puts "Buy on day #{best_buy_day}, sell on day #{best_sell_day}, for a total return of #{max_return}."


