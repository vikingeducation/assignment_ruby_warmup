def roll_dice(number_of_dice = 1)
  die = [1, 2, 3, 4, 5, 6]
  die_rolls = []
  roll_total = 0 
  
  number_of_dice.times { die_rolls << die.sample }
  
  roll_total = die_rolls.reduce(:+)
end 