def roll_dice(number_of_dice = 1)
  total_amount_rolled = 0

  number_of_dice.times do
    total_amount_rolled += rand(1..6)
  end

  total_amount_rolled
end

print 'Please enter the number of dice to roll? - '
dice_to_roll = gets.chomp.to_i

puts "You got #{roll_dice(dice_to_roll)} from #{dice_to_roll} dice rolled"
