def roll_dice(number_of_dice=1)
  sum = 0
  number_of_dice.times do
    sum += (1+rand(6))
  end
  return sum
end

def dice_outcomes(number_of_dice, number_of_rolls)
  #build hash of all possible values
  outcomes = {}
  (number_of_dice..number_of_dice*6).each do |i|
    outcomes[i] = 0
  end

  #roll dice the specified number of times and store in hash
  number_of_rolls.times do
    roll = roll_dice(number_of_dice)
    outcomes[roll] = outcomes[roll]+1
  end

  #output hash as formatted histogram
  outcomes.each do |roll, tally|
    puts "#{roll.to_s.ljust(2)}:  " + "#"*tally
  end
end
