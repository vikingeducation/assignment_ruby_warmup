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
    other_index = index+1
    (index+1).upto(stock_array.length-1) do |later_day|

      profit = stock_array[later_day] - stock_price

      if profit > best_profit
        best_profit = profit
        days_best_profit = [index, other_index]
      end
      #puts "#{index}, #{other_index}, #{profit}"
      other_index += 1
    end
    index += 1
  end
  return days_best_profit
end

def anagrams(word)
  dictionary = IO.readlines("enable.txt")
  test_anagram_list = []
  anagram_list = []

  letters = word.strip.split("")

  #find number of possible permutations
  permutations = 1
  letters.size.downto(1) do |current_number|
    permutations *= current_number
  end

  #find all possible permutations of the letters
  while test_anagram_list.size < permutations - 1
    test_anagram = "#{letters.shuffle.join}\n"

    if test_anagram.strip != word.strip and !test_anagram_list.include?(test_anagram)
      test_anagram_list.push(test_anagram)
    end
  end

  test_anagram_list.each do |test_anagram|
    if dictionary.include?(test_anagram)
      anagram_list.push(test_anagram.strip)
    end
  end

  anagram_list.sort!

  return anagram_list
end

anagrams("pears")