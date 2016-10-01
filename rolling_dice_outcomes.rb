# Takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up.
def dice_outcomes(num_dice, num_times_roll)
  # frequency_dice_rolls = {1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0}
   
  # Minumum and maximum total that can be generated
  min = num_dice
  max = num_dice * 6

  running_total = Hash.new

  num_times_roll.times do
    current_sum = 0
    num_dice.times do
      current_sum += rand(6) + 1
    end

    # Add the new sub-total to the hash or increment the frequency if already exists
    if(running_total.key?(current_sum))
      running_total[current_sum] = running_total[current_sum] + 1
    else
      running_total[current_sum] = 1
    end
  end

  size = running_total.length

  # Print the hash in a graphical format
  running_total.each do |key, freq_value|
    print_frequency = ""
    freq_value.times do
      print_frequency += "#"
    end

    puts "#{key}: #{print_frequency}"  
  end
end

dice_outcomes(3,5)