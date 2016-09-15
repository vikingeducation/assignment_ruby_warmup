#this is a dice roller app, it takes two inputs. How many sides the dice have, and how many of them you want to roll. 
def roll_dice(num = 1, sides = 6)
  dicearray = (1..sides).to_a
  holder = 0
  dice = num
  while 0 < num
    holder += dicearray.sample
    num -= 1 
  end

  puts "The sum of #{dice} #{sides} sided dice being rolled is #{holder}"
  return holder

end

roll_dice(1, 12)
roll_dice(20, 4)
roll_dice
roll_dice(4)