def stock_picker(prices=[])
  differences = {}

  prices.each_with_index do |x, i|
    prices.each_with_index do |y, j|
      differences[[i, j]] = y - x if j > i
    end
  end

#finds index of value w/ max difference
  index_of_max = differences.values.index(differences.values.max)

#finds key corresponding to above value
  puts differences.keys[index_of_max]

end



prices = [44, 30, 24, 32, 35, 30, 40, 38, 15]
stock_picker(prices)