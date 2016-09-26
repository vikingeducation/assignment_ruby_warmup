require_relative 'roll_dice.rb'

def dice_outcomes(num_dice = 1, num_roll = 1)
  outcomes = {}
  num_roll.times do
    result = roll_dice(num_dice)
    if outcomes.include?(result)
      outcomes[result] += '#'
    else
      outcomes[result] = '#'
    end
  end
  outcomes.each do |k, v|
    if k < 10
      puts "#{k}:  #{v}"
    else
      puts "#{k}: #{v}"
    end
  end
end
dice_outcomes(4, 100)