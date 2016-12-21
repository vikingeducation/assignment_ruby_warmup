#Now write a method dice_outcomes which takes the 
#number of dice to roll and the number of 
#times to roll them, then outputs a visual chart 
#of how many times each possible number comes up.

def roll_dice(n=1)
  result = 0
  n.times do
    dice = rand(6) + 1 
    result += dice
  end
  return result
end

def dice_outcomes(num_dice, num_times)
  result = Hash.new(0)
  num_times.times do
    roll = roll_dice(num_dice) 
    result[roll] += 1
  end
  puts result
end

def render_outcomes()

end

dice_outcomes(4,200)

#Two argument:  number of the dice to roll, 
#and number of times to roll.

#output a visual chart of how many times each number
#comes up


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
# #=> {3=>2, 4=>1, 5=>1, 6=>4, 7=>3, 8=>17, 9=>11, 10=>9, 11=>12, 12=>10, 13=>10, 14=>9, 15=>6, 16=>2, 17=>2, 18=>1} 

#Render outcomes may be "each method"