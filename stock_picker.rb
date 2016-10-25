#require 'pry'

prices = [44, 30, 24, 32, 35, 30, 40, 38, 15]

def stock_picker(prices)
  pairs = {}
  prices.each_with_index do |buy, i|
    prices[i..prices.length].each_with_index do |sell, j|
      #binding.pry
      pairs[[i, j+i]] = sell - buy
    end
  end
  #puts pairs
  result = pairs.max_by { |key, value| value }
  puts "Most profitable indexes: #{result[0]}. Profit: #{result[1]}"
end
stock_picker(prices)
