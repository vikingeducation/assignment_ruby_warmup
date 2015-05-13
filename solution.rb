def roll_dice(number_of_dice = 1) 
  die = (1..6).to_a
  total = 0;
  number_of_dice.times do
    total += die.sample
  end
  return total
end

# Testing
# puts roll_dice(1)
# puts roll_dice(2)
# puts roll_dice(3)
# puts roll_dice(4)
# puts roll_dice()





def dice_outcomes(number_of_dice =1, number_of_rolls=10)

  # Set up outcome hash
  outcomes_array = (number_of_dice..(number_of_dice*6)).to_a
  outcomes = {}
  outcomes_array.each do |outcome| 
    outcomes[outcome] = 0
  end
  

  number_of_rolls.times do
    # Rolls the number of dice specified and stores in outcomes hash
    outcomes[roll_dice(number_of_dice)] += 1
  end

  # Make a chart from each outcome
  outcomes.each do |key, value| 
    chart = ""
    value.to_i.times do
      chart += "#"
    end
    puts "#{key}:#{chart}"
  end
end

# Testing
# dice_outcomes(18,1000)
# dice_outcomes()




def fibonacci(number)
  results_array = []
  number.times do |current_number|
    #Sets up first two numbers
    if current_number < 2
      results_array[current_number] = 1
    else
      results_array[current_number] = results_array[current_number -1] + results_array[current_number -2]
    end
  end
  return results_array
end

# Testing
# puts fibonacci(1)
# puts fibonacci(2)
# puts fibonacci(10)
# puts fibonacci(1000)




def stock_picker(stocks)
  biggest_profit = 0
  best_pair_indices = []

  stocks.each_with_index do |first_price, first_index| 
    stocks.each_with_index do |last_price, last_index| 
      if first_index < last_index # Only compare indices in the future
        if (last_price - first_price) > biggest_profit
          biggest_profit = last_price - first_price
          best_pair_indices = [first_index, last_index]
        end
      end
    end
  end
  best_pair_indices
end

# Testing
# puts stock_picker([44,30,24,32,35,30,40,38,15])