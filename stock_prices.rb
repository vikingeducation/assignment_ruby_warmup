# Takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock, for example:

def stock_picker(stock_prices)

  min = stock_prices[0]
  max = stock_prices[0]
  min_max_days = []
  len = stock_prices.length

  stock_prices.each_with_index do |price, i|
    # If we have found a new minimum stock price, save the day


    if(price < min && (i < len-1))
      min = price
      min_max_days[0] = i

      # If we find a new minimum day price, the maximum needs to be after this
      max = price
      min_max_days[1] = i
    end


    # If we have found a new maximum stock price, save the day
    if(price > max)
      max = price
      min_max_days[1] = i
    end
  end

  puts "#{min_max_days}"
 
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
#=> [2, 6]