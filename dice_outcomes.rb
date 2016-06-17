def dice_outcomes (num_of_dice, num_of_rolls)
  outcomes = {}
  possible_rolls = ((num_of_dice * 1)..(num_of_dice * 6)).to_a
  possible_rolls.length.times do |roll_sum|
    outcomes[possible_rolls[roll_sum]] = 0
  end
  num_of_rolls.times do |roll|
    outcomes[roll_dice(num_of_dice)] += 1
  end
  print_index = num_of_dice * 1
  while print_index <= num_of_dice * 6
    puts print_index.to_s + ": " + ("#" * outcomes[print_index])
    print_index += 1
  end
end


def roll_dice (number_of_dice=1)
  die = (1..6).to_a
  dice_rolled = 0
  sum_of_rolls = 0
  while dice_rolled < number_of_dice
    sum_of_rolls += die.sample
    dice_rolled += 1
  end
  return sum_of_rolls
end


dice_outcomes(2, 12)