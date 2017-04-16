#Now write a method dice_outcomes which takes the 
#number of dice to roll and the number of 
#times to roll them, then outputs a visual chart 
#of how many times each possible number comes up.

def roll_dice(n=1)
  result = 0
  n.times do
    dice = rand(6) + 1 
    result += dice
  end
  return result
end

def dice_outcomes(num_dice, num_times)
  result = Hash.new(0)
  num_times.times do
    roll = roll_dice(num_dice) 
    result[roll] += 1
  end
  (num_dice * 6).times do |index|
    visual = []
    puts result[index + 1] 
    visual << "#"
    #visual output
      puts count_string
  end
end


dice_outcomes(1,20)

