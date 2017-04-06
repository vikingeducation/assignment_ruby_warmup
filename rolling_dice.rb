#!/usr/bin/ruby

def roll_dice(number_of_dice = 1)
  sum = 0
  dice_numbers = [1, 2, 3, 4, 5, 6]
  number_of_dice.times do
    sum += dice_numbers.sample
  end
  puts sum
end

roll_dice(4)

roll_dice(2)

roll_dice
