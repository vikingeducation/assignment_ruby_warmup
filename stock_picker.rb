=begin
  - write a method 'stock_picker' (Done)
  - which takes an array of stock prices(prices on days 0,1, ...) (Done)
  - and outputs the most profitable pair of days on which to first buy the stock and then sell the stock (Done)

  e.g.
  > stock_picker([44,30,24,32,35,30,40,38,15])
  => [2,6]

  BRAINSTORMING
  - this looks like a situation where we keep a variable that holds the highest profit amount and see if other results can beat it.
  - could do a each iteration and inside that one will need another loop that goes through all subsequent numbers
=end

def stock_picker(stock_prices)
  index_of_last_stock = stock_prices.count - 1
  max_profit = 0
  index_to_buy = 0
  index_to_sell = 0
  buy_and_sell = []

  stock_prices.each_with_index {|num, i|
    if i < index_of_last_stock #If it's the last stock we're not doing any comparisons.
      ((i+1)..index_of_last_stock).each { |comparison_index| #We want to compare the current item with all successive stock prices.
        if stock_prices[comparison_index] - num > max_profit #If the profit margin of the comparison stock - the stock price we're currently on is larger than the max recorded so far...
          max_profit = stock_prices[comparison_index] - num #set the max profit
          index_to_buy = i #set the index of best profit buy date
          index_to_sell = comparison_index # set the index of best profit sell date
        end
      }
    end
  }

  buy_and_sell << index_to_buy
  buy_and_sell << index_to_sell
  buy_and_sell
end

print stock_picker([44,30,30,32,35,30,40,38,20])