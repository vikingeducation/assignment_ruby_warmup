def roll_dice(num_dice)
  max_possible_num = num_dice * 6
  num_dice == 1 ? 1 : rand(2..max_possible_num)
end

roll_dice(2)
roll_dice(4)
