def roll_dice(number_of_dice = 1)
  dice_total = 0

  number_of_dice.to_i.times do
    dice_total += (1 + rand(6))
  end

  return dice_total
end


def dice_outcomes(number_of_dice, number_of_rolls)
  outcomes = Array.new

  number_of_rolls.times do
    outcomes << roll_dice(number_of_dice)
  end

  summary = outcomes.sort!

  previous_outcome = 0

  summary.each do |current_outcome|

    if current_outcome != previous_outcome # then it's a new number
      puts " " #start a new line
      print "#{current_outcome}: "
      print " " if current_outcome.to_i < 10
    end

    print "#"
    previous_outcome = current_outcome

  end

  puts " "

end