#Now write a method dice_outcomes which takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up.
#> dice_outcomes(3,100)
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

def dice_outcomes (num_dice, times_rolled)
  outcomes={}
  die=(1..6).to_a

  # number of times to roll that number of dice
  times_rolled.times do
    result=0

    #number of dice to roll
    num_dice.times do
      result += die.sample
    end

    #add result into hash
    outcomes[result].nil? ? outcomes[result]=1 : outcomes[result]+=1
  end # number dice roll

  #print out visual chart
  #sort order printed
  outcomes.sort.each do |roll, frequency|
    puts "#{roll}: " + "#" * frequency
  end

end

dice_outcomes(3,100)