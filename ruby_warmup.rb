def roll_dice(number_of_dice=1)
  sum = 0
  number_of_dice.times do
    sum += (1+rand(6))
  end
  return sum
end
