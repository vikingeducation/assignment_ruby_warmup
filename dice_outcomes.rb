
def dice_outcomes(number_of_dice, times_to_roll)

  dice_outcomes = Hash.new(0)

  times_to_roll.times do

    number_of_dice.times { dice_outcomes[(1 + rand(6))] += 1 }

  end

  dice_outcomes = dice_outcomes.sort

  dice_outcomes.each  do |number, times_rolled|

    puts "#{number}: #{"#" * times_rolled}"

  end

end
