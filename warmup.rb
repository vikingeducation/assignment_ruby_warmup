#!/usr/bin/env ruby

def roll_dice(number_dice=1)
  result = 0
  dice = [1,2,3,4,5,6]
  number_dice.times do
    result += dice.sample.to_i
  end

  return result
end

def dice_outcomes(number_dice=2,number_rolls=100)
  results = []
  number_rolls.times do |current_num|
    results.push(roll_dice(number_dice))
  end

  results.sort!

  last_result=0
  results.each do |result|
    spacer = ""
    if result < 10
      spacer = " "
    end
    if result != last_result
      print "\n#{result}:#{spacer} \#"
    else
      print "\#"
    end

    last_result=result
  end

  print "\n"

  return nil
end

def fibonacci(number)
  results = []
  current_number = 1
  last_number = 0
  next_number = 0
  number.times do |iteration|
    results.push(current_number)
    next_number = last_number + current_number
    last_number = current_number
    current_number = next_number
  end

  return results
end

def stock_picker(stock_array)
  profit = 0
  best_profit = 0
  days_best_profit = [0,1]

  index = 0
  stock_array.each do |stock_price|
    other_index = 0
    (index+1).upto(stock_array.size-1) do |other_stock_price|
      profit = other_stock_price - stock_price
      if profit > best_profit
        best_profit = profit
        days_best_profit = [index, other_index]
      end
      other_index++
    end
    index++
  end

  return days_best_profit
end