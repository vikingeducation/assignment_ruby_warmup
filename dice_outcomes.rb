def roll_dice(number_of_dice=1)
  total_amount_rolled = 0

  number_of_dice.times do
    total_amount_rolled += rand(1..6)
  end

  return total_amount_rolled
end

def dice_outcomes(number_of_dice=1, number_of_rolls=1)
  dice_rolls = Hash.new(0)

  number_of_rolls.times do
    number_rolled = roll_dice(number_of_dice)
    dice_rolls[number_rolled] += 1
  end

  return dice_rolls
end

def render_result(dice_rolls)
  roll_result = dice_rolls.sort.to_h
  roll_result.each do |number_rolled, times_rolled|
    puts "#{number_rolled}:\t" << "#" * times_rolled
  end

  puts roll_result
end

print "How many dices do you want to roll?: "
number_of_dice = gets.chomp.to_i

print "How many times do you want to roll?: "
number_of_rolls = gets.chomp.to_i

dice_roll_results = dice_outcomes(number_of_dice, number_of_rolls)
render_result(dice_roll_results)
