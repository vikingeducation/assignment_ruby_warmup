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
puts roll_dice(4)
puts roll_dice(2)
