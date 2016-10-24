def dice_outcomes(number_of_dice = 1, number_of_rolls = 1)

  # need nested loop?
  # one loop to roll each die within that batch
  # another loop to roll each batch


  die_numbers = [1,2,3,4,5,6]
  times_rolled = 0

  die_hash = die_hash_generator(number_of_dice, number_of_rolls)

  while times_rolled < number_of_rolls
    number_of_dice_rolled = 0
    sum = 0
    while number_of_dice_rolled < number_of_dice
      sum += die_numbers.sample
      number_of_dice_rolled += 1
    end
    die_hash[sum] += 1
    times_rolled += 1
  end

  # now I just need a way of outputting my data to the console
  # which iterator should I use? while, until, times, for, each?
  # each I think

  die_hash.each do |total, total_occurrences|
    outcome = ""
    while outcome.length < total_occurrences
      outcome += "#"
    end
    puts "#{total}:\t #{outcome}\n"
  end

end

def die_hash_generator(number_of_dice, number_of_rolls)

  die_hash = { }
  current_number_of_dice = number_of_dice

  while current_number_of_dice <= (number_of_dice * 6)
    die_hash[current_number_of_dice] = 0
    current_number_of_dice += 1
  end

  return die_hash

end

dice_outcomes(3, 100)