def roll_dice(number_of_dice=1)
  sides_of_die = 6
  total = 0
  (number_of_dice).times do
    roll = rand(1..sides_of_die)
    total = total + roll
  end
  puts total
end

roll_dice(4)
roll_dice()
