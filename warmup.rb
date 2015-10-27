#!/usr/bin/env ruby

def roll_dice(number_dice=1)
  result = 0
  dice = [1,2,3,4,5,6]
  number_dice.times do
    result += dice.sample.to_i
  end

  return result
end

def dice_outcomes(number_dice=1,number_rolls=100)
  results = []
  index = 0
  number_rolls.times do
    results.push(roll_dice(number_dice))
    index++
  end

  results.sort!

  last_result=0
  each results do |result|
    if result != last_result
      puts "${result.to_s}: \#"
    else
      print "\#"
    end
  end

  return results
end