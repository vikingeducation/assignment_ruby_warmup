#rolldiceoutcomes.rb takes the number of dice to roll and the number of times
#to roll them, then outputs a visual chart of how many times each possible
#number comes up.

def roll_dice_outcomes(number_of_dice,sided_dice,number_of_rolls)
  #Determine highest and lowest possible rolls.
  highest_dice_roll = number_of_dice * sided_dice
  lowest_dice_roll = number_of_dice * 1

  #Created array(dice_range) with lowest and highest dice range possible.
  dice_range = []
  until lowest_dice_roll > highest_dice_roll
    dice_range << lowest_dice_roll
    lowest_dice_roll += 1
  end

  #Created array(rolls) with the lowest and highest number of rolls possible.
  lowest_roll = 0
  rolls = []
  until lowest_roll == number_of_rolls
    rolls << lowest_roll
    lowest_roll += 1
  end

  #Randomize how many times dice landed on dice number.
  #Transfer numbers to '#' for every number rolled.
  pound_signs = Array.new
  dice_range.each do |num|
    rand_num = rolls.sample
    pound_signs << "#" * rand_num
  end

  #Combined dice_range and pound_signs to create a hash with key and values respectively.
  outcome = Hash.new
  outcome = dice_range.zip(pound_signs).to_h
  return outcome
end

#User prompt
puts "How many dice do you want to roll?"
a = gets.chomp

puts "How many sides do the dice have?"
b = gets.chomp

puts "How many times would you like to roll them rolls?"
c = gets.chomp

print roll_dice_outcomes(a.to_i,b.to_i,c.to_i)
