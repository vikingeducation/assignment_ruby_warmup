def roll_dice number_of_dice
  sum_of_dice = 0;
  number_of_dice.times do
    sum_of_dice += (1+rand(6))
  end
  sum_of_dice
end

puts roll_dice 1
puts roll_dice 3