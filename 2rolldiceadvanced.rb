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
   list_of_rolls.push(val)
   times -= 1
  end
  
  unique_array = list_of_rolls.uniq
  unique_array.sort!

  unique_array.each do |uniquenumber|
    howmany = list_of_rolls.count(uniquenumber)
    hashes = "#" * howmany
    puts "#{uniquenumber}: #{hashes} (#{howmany})" #its really hard to count hashes, so I added a summary number
  end

end

puts "test1"
dice_outcomes(1, 10)
puts "test2"
dice_outcomes(3, 100)
puts "test3"
dice_outcomes(20,10)
puts "test4"
dice_outcomes(10, 1)