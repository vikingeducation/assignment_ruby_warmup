#!/usr/bin/ruby

def dice_outcomes(number_of_dice = 1, number_of_rolls = 1)
  sum = 0
  dice_numbers = (1..6).to_a
  roll_counts = []

  number_of_rolls.times do
    number_of_dice.times do
      sum += dice_numbers.sample
    end

    roll_counts << sum
    sum = 0
  end

  (number_of_dice * dice_numbers.count + 1).times do |x|
    count_string = []
    roll_counts.count(x).times do
      count_string << "#"
    end
    puts "#{x}: #{count_string.join}" if roll_counts.count(x) != 0
  end

  roll_counts.clear
end

dice_outcomes(3,100)
