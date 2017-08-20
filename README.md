assignment_ruby_warmup
======================

Dice, dice, baby.

[A Ruby assignment from the Viking Codes School](http://www.vikingcodeschool.com)

By Jucavi

roll_dice returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1)
> roll_dice(4)
#>16

dice_outcomes takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up
> dice_outcomes(2,100)
0:  #
1:  #####
4:  ############
5:  #######
6:  ##############
7:  #################
8:  ####################
9:  ########
10:  #########
11:  #####
12:  ##
#=> {2=>1, 3=>5, 4=>12, 5=>7, 6=>14, 7=>17, 8=>20, 9=>8, 10=>9, 11=>5, 12=>2}

fibonacci  outputs the Fibonacci Sequence members out to the specified number of members.
> fibonacci(7)
#=> [1, 1, 2, 3, 5, 8, 13]

stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock, for example:

> stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
#=> [2, 6]

anagrams which returns an array of anagrams that can be made with the specified string. Assume the input is only a single word (e.g. "loot" not "William Shakespeare").
# Note: "pears" doesn't appear in the output
> anagrams("pears")
# => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]
> anagrams("zygote")
#=>
