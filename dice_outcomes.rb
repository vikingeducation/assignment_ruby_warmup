def roll_dice(rolls=1)
  sum = 0
  rolls.times do
    sum += (1 + rand(6))
  end
  return sum
end

def dice_outcomes(dice, rolls)
  # We get a hash with default value 0 to count our outcomes.
  histogram = Hash.new(0)

  rolls.times do
    histogram[roll_dice(dice)] += 1
  end

  # Sort our histogram
  histogram = Hash[histogram.sort]

  # Print our outcomes and the occurence of each
  histogram.each do |key, value|
    print "#{key}: " + ("\#" * value)
    puts ""
  end
end

dice_outcomes(3, 100)