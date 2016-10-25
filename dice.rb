def roll_die
  1 + rand(6)
end

def roll_dice(number_of_dice)
  sum = 0
  number_of_dice.times do
    sum += roll_die
  end
  return sum
end

def dice_possibilities(number_of_dice)
  min = number_of_dice
  max = number_of_dice * 6
  return Array(min..max)
end

def dice_outcomes(number_of_dice, number_of_dice_rolls)
  possibilites = dice_possibilities(number_of_dice)
  results = Hash[possibilites.map {|i| [i, 0]}]
  number_of_dice_rolls.times do
    result = roll_dice(number_of_dice)
    results[result] += 1
  end
  possibilites.each do |i|
    puts String(i).rjust(2) + ": " + "#" * results[i] + "\n"
  end
  return results
end
dice_outcomes(3, 100)
