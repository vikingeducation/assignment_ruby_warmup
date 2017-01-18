def roll_dice(num_dice = 1)
  dice = (1..6).to_a
  result = 0

  num_dice.times { result += dice.sample }

  result
end
