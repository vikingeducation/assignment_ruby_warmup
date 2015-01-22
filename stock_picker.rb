def stock_picker stock_prices
  most_profitable_days = [0, 0]
  max = 0
  day = 0
  stock_prices.each_with_index do |item, index|
    day = index
    stock_prices.each_with_index do |item_two, index_two|
      day_two = index_two
      if (day_two <= day)
        next
      end
      if ((item_two - item) > max)
        most_profitable_days = [day, day_two]
        max = (item_two - item)
      end

    end

  end
  most_profitable_days
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])