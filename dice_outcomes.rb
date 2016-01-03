#take the number of dice to roll
#also take the number of times to roll them
#outputs a visual chat of how many times each possible number comes up.


#Create an array [1..6] for each number of dice.
#Then sum all the elements of each array by the elements of the other arrays.
#

def dice_outcomes (number_dice, number_rolls)
  outcomes_hash = Hash.new
  (number_dice..number_dice*6).to_a.each do |x|
    outcomes_hash[x] = 0
  end
  
  number_rolls.times do
    roll_outcome = roll_dice(number_dice)
    outcomes_hash[roll_outcome] = outcomes_hash[roll_outcome] + 1
  end

  outcomes_hash.each do |key, value|
    if key<10
      puts "#{key}:  #{'#'*value} "
    else
      puts "#{key}: #{'#'*value} "
    end
  end 
 return outcomes_hash
end

 

    




#Then push the outcomes of the sums into an array.


#Then need someone to print out the number of occurances of each number...would this be a hash?