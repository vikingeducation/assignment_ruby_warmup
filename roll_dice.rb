def roll_dice(number_of_dice)
    sum = 0

    number_of_dice.times do
        sum += rand(6) + 1
    end
    sum
end

def dice_outcomes(number_of_dice, times_to_roll)
    outcomes = {}
    outcomes.default = 0

    times_to_roll.times do
        outcomes[roll_dice(number_of_dice).to_s] += 1
    end
    final_outcomes = outcomes.sort_by {|roll, times| roll.to_i}

    final_outcomes.each do |pair|
        puts "#{pair[0]}:\t" + "\#" * pair[1]
    end
end