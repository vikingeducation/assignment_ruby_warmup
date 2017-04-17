def roll_dice(num_dice=0)
  dice_numbers= [1,2,3,4,5,6]
  sum=0
    num_dice.times do
    sum += dice_numbers.sample
  end
  if num_dice==1
    puts "The value of #{num_dice} die rolled, is #{sum}."
  elsif num_dice > 1
    puts "The total value of #{num_dice} dice rolled, is #{sum}."
  else
    puts "Invalid entry."
  end
end


puts "Please select number of dice to roll"
num_dice=gets.chomp.to_i
roll_dice(num_dice)
