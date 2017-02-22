=begin
	
Write a method roll_dice which returns the result of 
rolling N 6-sided dice where N is the input to the 
method (the default should be 1). 
For example:	
> roll_dice(4)
#=> 18          # Rolled 4 dice
> roll_dice(2)
#=> 4           # Rolled 2 dice
> roll_dice
#=> 1           # Rolled 1 die

Rolling Dice Outcomes

Now write a method dice_outcomes which takes the number 
of dice to roll and the number of times to roll them, 
then outputs a visual chart of how many times each 
possible number comes up. 
For example:
=end
def rolldice(dies)

outcome = 0
	3.times do 
	  side = rand(1..6)	  
		outcome = outcome + side
	end
	return outcome
end

p rolldice(3)




=begin
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
=end