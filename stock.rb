# stock.rb

def stock_picker(price_array = [])
  if price_array.length < 2
    return 'Array to short to test, please provide at least two values'
  end

  result = []
  profit = price_array[1] - price_array[0] - 1

  price_array.each_with_index do |val, index|
    (index + 1).upto(price_array.length - 1) do |test_index|
      test_profit = price_array[test_index] - val
      next if test_profit <= profit
      profit = test_profit
      result = [index, test_index]
    end
  end
  result
end

# stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
