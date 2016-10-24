def roll_dice(number_of_dice = 1)

  # need a way of rolling each die randomly
  # adding the sum
  # returning the sum

  sum = 0
  times_rolled = 0
  die_nums = [1,2,3,4,5,6]

  while times_rolled < number_of_dice
    sum += die_nums.sample
    times_rolled += 1
  end

  puts sum

end

roll_dice(4)
roll_dice(2)
roll_dice