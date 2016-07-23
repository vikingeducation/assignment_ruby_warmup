# traditional method
def stock_picker stocks
  max_diff = 0
  result = []
  stocks.each_with_index do |price1, day1|
    stocks.each_with_index do |price2, day2|
      next if day2 < day1
      difference = price2 - price1
      if difference > max_diff
        max_diff = difference
        result[0] = day1
        result[1] = day2
      end
    end
  end
  result
end
