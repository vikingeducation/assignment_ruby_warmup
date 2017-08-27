# Write a method stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock, for example:

def stock_picker(stock_prices)
  possible_pairs = []
  profit_amounts = []
  stock_prices.each_with_index do |price, index|
    buy = price
    remaining_prices = stock_prices[(index + 1)..-1]
    sell = remaining_prices.max
    profit = sell - buy if sell != nil
    possible_pairs << {buy: buy, sell: sell, profit: profit}
    profit_amounts << profit
  end

  highest_profit = profit_amounts.compact.max
  best_pair = possible_pairs.select do |pair|
    pair[:profit] == highest_profit
  end

  result = []
  result << best_pair[0][:buy]
  result << best_pair[0][:sell]

  p result

end

stock_prices = [44, 30, 24, 32, 35, 30, 40, 38, 15]

stock_picker(stock_prices)

