# write a method, dice_outcomes, which takes the number of dice to roll and the number of times to roll them
# then outputs a visual chart of how many times each possible number comes up
# Example
# 3: ##
# 4: #
# 5: ####


#

def dice_outcomes(num_dice=1, num_rolls)
  outcomes = {}
  (num_dice..num_dice*6).each do |outcome|
    outcomes[outcome] = ""
  end
  num_rolls.times do
    sum = 0
    num_dice.times do
      sum += rand(1..6)
    end
    outcomes[sum] += "#"
  end
  outcomes.each do |outcome, times|
    puts "#{outcome}: #{times}"
  end
end

dice_outcomes(2, 10)
