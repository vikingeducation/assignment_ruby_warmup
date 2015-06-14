def stock_picker(array)
  greatest_difference = 0
  for day1_index in (0...array.length)
    for day2_index in ((day1_index+1)...array.length)
      # puts "#{array[day1_index]} and #{array[day2_index]}"
      current_difference = array[day2_index] - array[day1_index]
      if current_difference > greatest_difference
        greatest_difference = current_difference
        solution = [day1_index, day2_index]
      end
    end
  end
  return solution
end

p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])