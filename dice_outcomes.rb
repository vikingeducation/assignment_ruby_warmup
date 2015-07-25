input = [7,500]

def roll_dice(num_of_dice=1)
  sum = 0

  num_of_dice.times do |num|
    roll = Random.new
    sum += roll.rand(1..6)
  end

  return sum
end

def dice_outcomes(dice, times_rolled)
  dice_values = {}

  times_rolled.times do |num|
    outcome = roll_dice(dice)
    if dice_values[outcome]
      dice_values[outcome] += 1
    else
      dice_values[outcome] = 1
    end
  end

  dice_values.sort.each do |outcome, occurences|
    if outcome < 10
      puts "#{outcome}:  " + "#" * occurences
    else
      puts "#{outcome}: " + "#" * occurences
    end
  end

  print "\n" + dice_values.sort.to_s
end

dice_outcomes(input[0], input[1])