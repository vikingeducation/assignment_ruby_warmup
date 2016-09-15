def roll_dice(num = 1)
  dicearray = (1..6).to_a
  holder = 0
  dice = num
  while 0 < num
    holder += dicearray.sample
    puts holder
    num -= 1 
  end

  puts "The sum of #{dice} six sided dice being rolled is #{holder}"

end

roll_dice(1)
roll_dice(20)
roll_dice
roll_dice(4)