def roll_dice(number_of_dice=1)

  result = 0
  number_of_dice.times { result += (1 + rand(6))}
  puts result

end



roll_dice