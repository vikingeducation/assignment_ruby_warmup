Now write a method dice_outcomes which takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up. For example:

> dice_outcomes(3,100)
3:  ##
4:  #
5:  #
6:  ####
7:  ###
8:  #################
9:  ###########
10: #########
11: ############
12: ##########
13: ##########
14: #########
15: ######
16: ##
17: ##
18: #
#=> {3=>2, 4=>1, 5=>1, 6=>4, 7=>3, 8=>17, 9=>11, 10=>9, 11=>12, 12=>10, 13=>10, 14=>9, 15=>6, 16=>2, 17=>2, 18=>1}

def dice_outcomes (num_dice, times_rolled)

  outcomes = {}
  dice = (1...6).to_a

  times_rolled.times do
  	current_roll_total = 0

  num dice.times do
  	current_roll_total += dice.sample
  end

  	outcomes[current_roll_total].nil? outcomes[current_roll_total]=1 : outcomes[current_roll_total]+=1
  end

outcomes.sort.each do |roll, frequency|
	puts "#{roll}: " + "#" * frequency
  end

end

puts dice_outcomes(3,100)
