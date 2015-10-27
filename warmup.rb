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
  current = 1
  last = 0
  number.times do |iteration|
    results.push(current)
    current += last
    last = current
  end

  return results
end