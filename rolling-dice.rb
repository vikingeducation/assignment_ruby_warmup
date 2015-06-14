def roll_dice(number = 1)
  result = 0
  number.times do
    rolled = rand(1..6)
    result += rolled
  end
  return result
end

# puts roll_dice
# puts roll_dice(2)
# puts roll_dice(10)

def dice_outcomes(num_of_dice = 1, times_to_roll = 1)
  outcomes = Hash.new { |hash, key| hash[key] = 0}
  times_to_roll.times do
    sum_of_values = roll_dice(num_of_dice)
    outcomes[sum_of_values] += 1
  end
  outcomes = Hash[outcomes.sort]
  outcomes.each do |key, value|
    print "#{key}: "
    value.times do
      print '#'
    end
    print "\n"
  end
  return outcomes
end

# puts dice_outcomes
puts dice_outcomes(3,100)