def stock_picker(prices)
  diff = 0
  b_days = []
  prices.each_with_index do |value, day|
    prices.each_with_index do |value_2, day_2|
      if day_2 > day && (value_2 - value) > diff
        b_days = []
        diff = value_2 - value
        b_days << day << day_2
      end
    end
  end
  b_days
end

 puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
