def stock_picker(arr)

  max_profit = 0
  min_day = 0
  max_day = 0

  arr.each_with_index do |value, index|
    # iterate thru remaining array and find max profit
    if (arr[index+1..-1].max.to_i - value) > max_profit
      min_day = index
      max_day = arr.index(arr[index+1..-1].max)
      max_profit = arr[index+1..-1].max.to_i - value
    end
  end

  p [min_day, max_day]

end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
