# dict.rb

def roll_dice(number_die = 1)
  result = 0
  number_die.times do
    result += rand(1..6)
  end
  result
end

def dice_outcomes(number_die = 1, numbers_rolls = 1)
  outcomes = {}
  outcomes.default = 0

  numbers_rolls.times do
    result = roll_dice(number_die)
    outcomes[result] += 1
  end

  outcomes.sort.map do |key, value|
    print '%3s' % key.to_s << ' : '
    value.times do
      print '#'
    end
    puts ''
  end
  outcomes
end

# testing calls
# dice_outcomes(3, 50)
