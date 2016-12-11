# Now write a method dice_outcomes which takes the number of dice to
# roll and the number of times to roll them, then outputs a visual chart
# of how many times each possible number comes up.

def initialize_tally(num_dice)
  tally = {}
  min, max = num_dice, num_dice * 6
  (min..max).to_a.each do |i|
    tally[i.to_s] = 0
  end
  return tally
end

def roll_dice(num_dice = 1)
  result = 0
  num_dice.times do
    result += rand(6) + 1
  end
  return result
end

def roll_dice_n_times(num_dice, times_to_roll)
  tally = initialize_tally(num_dice)

  times_to_roll.times do
    result = roll_dice(num_dice)
    tally[result.to_s] += 1
  end

  return tally
end

def dice_outcomes(num_dice, times_to_roll)
  result_tally = roll_dice_n_times(num_dice, times_to_roll)

  outcomes = ""
  result_tally.keys.each do |key|
    outcomes += "\##{key}: #{"#" * result_tally[key]}\n"
  end
  puts outcomes

  return result_tally
end



dice_outcomes(3,100)
#3:  ##
#4:  #
#5:  #
#6:  ####
#7:  ###
#8:  #################
#9:  ###########
#10: #########
#11: ############
#12: ##########
#13: ##########
#14: #########
#15: ######
#16: ##
#17: ##
#18: #
#=> {3=>2, 4=>1, 5=>1, 6=>4, 7=>3, 8=>17, 9=>11, 10=>9, 11=>12, 12=>10, 13=>10, 14=>9, 15=>6, 16=>2, 17=>2, 18=>1}
