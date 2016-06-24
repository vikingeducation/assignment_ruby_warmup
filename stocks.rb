# Stock Picker

# Write a method stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock, for example:

# > stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
# #=> [2, 6]

def stock_picker(arr)
 
  max = 0
  day1 = 0
  day2 = 0

  arr.length.times do |buy|
    arr.length.times do |sell|
      if buy < sell && (arr[sell] - arr[buy] > max)
        day1 = buy
        day2 = sell
        max = arr[day2] - arr[day1]
      end
    end
  end

 return [day1, day2]
end