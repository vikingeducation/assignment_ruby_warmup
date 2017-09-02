def roll_dice(number_of_dice = 1)
  die = [1, 2, 3, 4, 5, 6]
  die_rolls = []
  
  number_of_dice.times { die_rolls << die.sample }

  roll_total = die_rolls.reduce(:+)
end 

def dice_outcomes(number_of_dice = 1, number_of_rolls = 1)
  die = [1, 2, 3, 4, 5, 6]
  roll_totals = []
  
  number_of_rolls.times do 
    die_rolls = []
    number_of_dice.times { die_rolls << die.sample }
    roll_totals << die_rolls.reduce(:+)
  end
  
  (number_of_dice..(number_of_dice * 6)).each do |num|
    puts "#{num}" + ': ' + "#" * roll_totals.count(num)
  end
end 

def fibonacci(num_in_sequence)
  fibnums = [1, 1]
  1.upto(num_in_sequence - 2) do |num|
    fibnums << fibnums[num] + fibnums[num - 1]
  end 
  fibnums.last
end