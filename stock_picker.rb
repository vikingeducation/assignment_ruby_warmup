def stock_picker(prices)
  largest_gap = 0
  best_pair = []
  prices.each_with_index do |first_price, i1|
    prices[i1 + 1..-1].each_with_index do |second_price, i2|
      diff = second_price - first_price
      if diff > largest_gap
        largest_gap = diff
        best_pair = [i1, i1 + i2 + 1]
      end
    end
  end
  p best_pair
end
