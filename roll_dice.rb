def roll_dice(number_of_dice=1)
  total_amount_rolled = 0

  number_of_dice.times do
    total_amount_rolled += rand(1..6)
  end

  return total_amount_rolled
end
