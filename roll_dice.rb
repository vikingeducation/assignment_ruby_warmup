

def roll_dice(number_of_dice)

  result = 0

  number_of_dice.times { result += (1 + rand(6)) }

  result

end