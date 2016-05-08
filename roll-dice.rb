# Write a method roll_dice which returns the result of rolling
# N 6-sided dice where N is the input to the method (the 
# default should be 1). 

def roll_dice(dice = 1)
  (1..6 * dice).to_a.sample
end

# Now write a method dice_outcomes which takes the number of 
# dice to roll and the number of times to roll them, then 
# outputs a visual chart of how many times each possible number 
# comes up.

def dice_outcomes(dice, rolls)
  counter = Hash.new(0)

  rolls.times do
    counter[roll_dice(dice)] += 1
  end    

  counter.sort.each do |num, count|
    puts "#{num}: #{'#' * count}"
  end

  return counter

end
