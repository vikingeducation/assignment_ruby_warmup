def roll_dice(rolls = 1)
  result = 0

  rolls.times do |roll|
    value = rand(1..6)
    result += value
  end
  result
end

# puts roll_dice(4)

def dice_outcomes(dice, rolls)
  outcome = {}

  rolls.times do
    roll_result = 0

    # calculates the sum per roll (uses method above).
    roll_result += roll_dice(dice)

    # adds roll_result to hash as key; assigns or, if key already exists, adds "#" to key's value.
    if outcome[roll_result].nil?
      outcome[roll_result] = "#"
    else
      outcome[roll_result] += "#"
    end
  end

  # sorts outcome hash, then prints key, value pairings.
  outcome.sort.each do |result, count|

    # adds additional space, for formatting purposes.
    if result < 10
      puts "#{result}:  #{count}"
    else
      puts "#{result}: #{count}"
    end
  end
end

dice_outcomes(5, 100)
