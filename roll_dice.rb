def roll_dice(number_of_dice=1)
  total_amount = 0

  number_of_dice.times do
    total_amount += (1..6).to_a.sample
  end

  return total_amount
end

puts roll_dice(4)
