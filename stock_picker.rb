def stock_picker(prices)
  difference = 0
  best_days = []
  prices.each_with_index do |value, day|
    prices.each_with_index do |value_2, day_2|
      if day_2 > day && (value_2 - value) > difference
        best_days = []
        difference = value_2 - value
        best_days << day << day_2
      end
    end
  end
  best_days
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])