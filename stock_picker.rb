def stock_picker( stock_prices )

  best_buy = stock_prices.min

  if stock_prices.length <= 1
    return puts "Enter an array of 2 or more stock prices!" # handle 1 element or empty arrays
  elsif stock_prices[0] == stock_prices.length
    return puts "Can't win this one!" # handle cases where numbers only decrement
  end

  # if the best day to buy (lowest number) is the last day,
  # delete it from the array, and set the best day to buy equal to the next smallest number
  # recursively call the stock_picker function with the modified array
  if stock_prices.index(best_buy) == stock_prices.length - 1
    stock_prices.delete(best_buy)
    best_buy = stock_prices.min
    return stock_picker( stock_prices )
  end

  # set sell_scope equal to the index of the best buy price + 1 to the end of the array
  # get the highest number from the sell scope, set it equal to best_sell
  sell_scope = stock_prices[stock_prices.index(best_buy) + 1..stock_prices.length]
  best_sell = sell_scope.max

  # print best days to buy and sell the stock in human-readable format (no zeroth day)
  puts "Best day to buy stock: day #{stock_prices.index(best_buy) + 1}"
  puts "Best day to sell stock: day #{stock_prices.index(best_sell) + 1}"
end

stock_picker( [30, 30, 24, 23, 35, 30, 90, 10, 9] ) # test case with last 2 nums the lowest
puts ""
stock_picker( [10, 9, 24, 23, 35, 30, 90, 9, 10] ) # test case with lowest nums @ beginning and end
puts ""
stock_picker( [44, 30, 24, 32, 35, 30, 40, 38, 15] ) # test case on assignment page
puts ""
stock_picker( [9] ) # test case with single element array passed
puts ""
stock_picker( [1, 2, 3, 4, 5, 6, 7, 8] ) # test case with incrementing values
puts ""
stock_picker( [5, 4, 3, 2, 1] ) # test case with decrementing values