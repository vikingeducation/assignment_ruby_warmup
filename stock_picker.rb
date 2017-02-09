def stock_picker(prices)
  while prices.empty? == false
    profits = []
    x = prices.shift
    puts "profits for buying at #{x}"
    prices.each_with_index do |num|
      profits << (num - x)
    end
    puts profits.max
  end
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
