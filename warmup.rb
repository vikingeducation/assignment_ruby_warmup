require 'pry'


def roll_dice(number_of_dice=1)
  faces = [1,2,3,4,5,6]
  total = 0

  number_of_dice.times { total = total + faces.sample }

  return total
end


def dice_outcomes(number_of_dice, number_of_rolls)
  possible_outcomes = (number_of_dice..(number_of_dice * 6)).to_a
  outcome = 0
  results = Hash.new(0)

  number_of_rolls.times do
    outcome = possible_outcomes.sample
    results[outcome] += 1
  end

  results.sort.each do |outcome, count|
    count = "#" * count
    puts "#{outcome}: #{count}"
  end
end


binding.pry
