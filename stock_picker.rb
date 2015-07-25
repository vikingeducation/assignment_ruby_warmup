test_array = [44, 30, 24, 32, 35, 30, 40, 38, 15]

def stock_picker(input)
  buy_day = 0
  sell_day = 0
  profit = 0

  input.length.times do |day|
    input.length.times do |compare_day|
      if day < compare_day && (input[compare_day] - input[day] > profit)
        buy_day = day
        sell_day = compare_day
        profit = input[sell_day] - input[buy_day]
      end
    end
  end

  pick = [buy_day, sell_day]

end

print stock_picker(test_array)