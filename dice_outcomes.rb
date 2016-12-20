# write a method dice_outcomes which takes the number of dice to roll and the number of times to roll them, 
# then outputs a visual chart of how many times each possible number comes up
# > dice_outcomes(3,100)
# 3:  ##
# 4:  #
# 5:  #
# 6:  ####
# 7:  ###
# 8:  #################
# 9:  ###########
# 10: #########
# 11: ############
# 12: ##########
# 13: ##########
# 14: #########
# 15: ######
# 16: ##
# 17: ##
# 18: #
#=> {3=>2, 4=>1, 5=>1, 6=>4, 7=>3, 8=>17, 9=>11, 10=>9, 11=>12, 12=>10, 13=>10, 14=>9, 15=>6, 16=>2, 17=>2, 18=>1}

def dice_outcomes(num_dice, num_rolls)
  dice_values = (1..6).to_a
  outcomes = Hash.new(0)
  i = 0 
  while i < num_rolls
    sum = 0
    num_dice.times do 
      sum += dice_values.sample
    end
    outcomes[sum] += 1
    i += 1
  end
  outcomes = outcomes.sort.to_h
  spacing = outcomes.keys.max.to_s.length + 2
  outcomes.each do |sum, num_times|
    puts "#{sum}: ".ljust(spacing) + "#" * num_times
  end
  outcomes
end

puts dice_outcomes(3,100)


