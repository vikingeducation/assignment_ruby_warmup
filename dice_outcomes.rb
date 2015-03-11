def roll_dice( dice_to_roll, times_to_roll )
  total_of_rolled_dice = 0
  rolled_count = 0

  # creating a hash and filling it with default key, value pairs
  # the keys are a range from dice_to_roll (if all the dice rolled come up as 1),
  # to dice_to_roll * 6 (if all the dice come up as 6)
  # the values are initially set to 0
  totals_frequency = Hash[(dice_to_roll..dice_to_roll*6).map { |total_value| [total_value, 0]}]

  while rolled_count < times_to_roll
    dice_to_roll.times do
      total_of_rolled_dice += rand(1...7) # adding the outcome of each of one die to the total
    end
    # add 1 to the value of the key that is the total of the rolled dice
    # increment how many time's we've rolled the sets of dice by 1
    # reset the total of the rolled dice to 0 for the next roll
    totals_frequency[total_of_rolled_dice] += 1
    rolled_count += 1
    total_of_rolled_dice = 0
  end

  # if the key is less than 9, use two spaces after the key
  # otherwise use one space.
  # keeps things pretty... unless you get into 3 digit numbers
  # but we're not that crazy. yet.
  totals_frequency.each do |key, value|
    if key < 10
      puts ("#{key}:  " + ("#"*value))
    else
      puts ("#{key}: " + ("#"*value))
    end
  end

end

roll_dice( 4, 100 )