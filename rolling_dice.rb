def roll_dice(rolls=1)
  sum = 0

  rolls.times do
    # this_roll = rand(6) + 1
    # puts this_roll
    sum += rand(6) + 1
  end

  # puts "Dice has been rolled #{rolls} time(s).  Sum of rolls is #{sum}."
end

roll_dice(4)
roll_dice(2)
roll_dice