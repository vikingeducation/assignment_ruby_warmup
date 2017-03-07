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

  output_outcome(outcomes)
  outcomes
end

def output_outcome(input_hash)
  input_hash.sort.map do |key, value|
    print key.to_s.rjust(4) << ' : '
    value.times do
      print '#'
    end
    puts ''
  end
end

# testing calls
# dice_outcomes(3, 50)
