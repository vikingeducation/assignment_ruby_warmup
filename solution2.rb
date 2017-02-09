def roll_dice(n=1)
  "returns the result of rolling n 6-sided dice"
  (0...n).reduce(0) do |acc, i|
    acc += rand(1..6)
  end
end

def dice_outcomes(num_of_dices, num_of_rolls)
  "takes the number of dice to roll and the number of times to roll them,
  and outputs a visual chart of how many times each possible number comes up"
  (0...num_of_rolls).reduce(Hash.new(0)) do |acc, i|
    result = roll_dice(num_of_dices)
    acc[result] += 1
    acc
  end.sort.each do |k, v|
    puts "#{k}:\t" + ("#" * v)
  end.to_h
end

def fib(n)
  "Outputs the Fibonacci Sequence members out to the specified number
  of members"
  x, y = 0, 1
  (0...n).reduce([]) do |acc, i|
    acc.push(y)
    x, y = y, (x + y)
    acc
  end
end

def stock_picker(stocks)
  (0...stocks.length).reduce({buy: 0, sell: 0, profit: 0}) do |result, buy_day|
    (buy_day...stocks.length).reduce(result) do |partial_result, sell_day|
      profit = stocks[sell_day] - stocks[buy_day]
      if profit > partial_result[:profit]
        partial_result = {buy: buy_day, sell: sell_day, profit: profit}
      else
        partial_result
      end
    end
  end
end

def stock_picker(stocks)
  "Takes an array of stock prices (the indexes are the days) and outputs
  the most profitable pair of days on which to buy the stock and then
  sell the stock."
  # for each day, see what the profit would have been by selling it on the others;
  # get the max to see that the highest would've been
  win = {buy: 0, sell: 0, profit: 0}
  stocks.length.times do |buy_day|
    (buy_day...stocks.length).each do |sell_day|
      profit = stocks[sell_day] - stocks[buy_day]
       if profit > win[:profit]
         win = {buy: buy_day, sell: sell_day, profit: profit}
       end
    end
  end
  win
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) # => [2, 6]
