#this is a dice roller app, it takes two inputs. How many sides the dice have, and how many of them you want to roll. 
def roll_dice(num = 1, sides = 6)
  dicearray = (1..sides).to_a
  holder = 0
  dice = num
  while 0 < num
    holder += dicearray.sample
    num -= 1 
  end
  return holder
end

def dice_outcomes(rolls, times)
  list_of_rolls = []
  finalvalue = 0

  while 0 < times
   val = roll_dice(rolls, 6)
   puts "this is #{val}"
   list_of_rolls.push(val)
   times -= 1
   puts times
  end
  list_of_rolls.each do |item|
    finalvalue += item
  end
  puts finalvalue
  return finalvalue
end

dice_outcomes(1, 10)