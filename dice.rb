# Rolling Dice

# Write a method roll_dice which returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1). For example:

# > roll_dice(4)
# #=> 18          # Rolled 4 dice
# > roll_dice(2)
# #=> 4           # Rolled 2 dice
# > roll_dice
# #=> 1     

def roll_dice(dice)
	result = 0
	dice.times do 
	result += rand(1..6)
	end
	return result
end

# Rolling Dice Outcomes

# Now write a method dice_outcomes which takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up. For example:

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

def dice_outcomes(dice, rolled)
  rolls = {}
  rolled.times do
    current_roll = roll_dice(dice)
    if rolls[current_roll]
      rolls[current_roll] += 1
    else
      rolls[current_roll] = 1
    end
  end

  results = rolls.to_a.sort
  results.each do |i|
    puts "#{i.first.to_s.rjust(4)}: #{'#' * i.last}"
  end

  rolls
end
 
 