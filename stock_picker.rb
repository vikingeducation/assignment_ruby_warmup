prices = [44, 30, 24, 32, 35, 30, 40, 38, 15]

def stock_picker(prices)
  pairs = {}
  prices.each_with_index do |buy, i| #FIXME: This includes pairs that can only be obtained through time travel, i.e. selling things before they have been purchased.
    prices.each_with_index do |sell, j|
      pairs[[i, j]] = sell - buy
    end
  end
  result = pairs.max_by { |key, value| value }
  puts "Most profitable indexes: #{result[0]}. Profit: #{result[1]}"
end
stock_picker(prices)
