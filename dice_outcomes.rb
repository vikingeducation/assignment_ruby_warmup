# Now write a method dice_outcomes which takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up.

def roll_dice(qty_dice = 1)
  roll_results = []

  qty_dice.times do |result|
    roll_results << rand(1..6)
  end

  roll_results.reduce(:+)
end

def dice_outcomes(qty_dice = 1, rolls = 1)
  roll_outcomes = {}

  rolls.times do
    roll_total = roll_dice(qty_dice)
    if roll_outcomes[roll_total]
      roll_outcomes[roll_total] += '#'
    else
      roll_outcomes[roll_total] = '#'
    end
  end

  roll_outcomes.sort.to_h.each do |key, value|
    puts "#{key}: #{value} (#{value.length})"
  end
end

dice_outcomes(3, 100)
