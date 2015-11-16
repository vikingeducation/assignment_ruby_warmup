=begin
  - Write a method roll_dice (done)
  - which returns the result of rolling N (6-sided dice) (done)
  - where N is the INPUT to the method (Can't be done)
  - the default should be 1 (done)
=end

def roll_dice(number_of_dice=1)
  total = 0
  number_of_dice.times {total += (1..6).to_a.sample}
  total
end

=begin
  - write a method dice_outcomes (done)
  - which takes the number of dice to roll (done)
  - and the number of times to roll them (done)
  - then outputs a visual chart of how many times each possible number comes up.

  e.g.

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

Brainstorming
- This returned a HASH
- puts key: value.times{print #} - Something along those lines.
- At the start create a blank hash
- for every outcome you'd have to create a new key in the hash if one doesn't exist already.
- if one exists you'd add 1 to the value of that hash.
- to puts the values of the hash in that format
    you'd start off with a .each to gothrough all the items because a .each returns the ORIGINAL HASH!!!!
- You'd use interpolation to get that nice pretty display.
- I do wonder if you should make the hash with the set keys as the above example has. It'd
  probably be easier if you did and set all values to zero at the start and then added 1 to them each time an event occurs. 


=end

def dice_outcomes(number_of_dice, number_of_rolls)
  dice_roll_outcomes = {}
  highest_possible_outcome = number_of_dice * 6

  (number_of_dice..highest_possible_outcome).each {|result|
    dice_roll_outcomes[result] = 0
  }

  number_of_rolls.times { dice_roll_outcomes[roll_dice(number_of_dice)] += 1 }

  dice_roll_outcomes.each {|key,value|
    puts "#{key}:  " << "#" * value
  }
end

print dice_outcomes(3, 30)
