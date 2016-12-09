# Now write a method dice_outcomes which takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up. 

def dice_outcomes(number_of_dice, times_to_roll)
  possible_sums = Hash.new(0)
  times_to_roll.times do
    sum = 0
    number_of_dice.times do
      sum += [1,2,3,4,5,6].sample
    end
    possible_sums[sum] += 1
  end

  (number_of_dice..number_of_dice * 6).each do |key|
    puts "#{key}:".ljust(4) + "#" * possible_sums[key]
  end

end

dice_outcomes(3, 100)