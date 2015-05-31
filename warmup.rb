def roll_dice(num=1)
  total = 0
  # For however many dice we have do a roll and add onto the total
  num.times do |i|
    total += (1..6).to_a.sample
  end
  return total
end


def dice_outcomes(num_of_dice, num_of_rolls)
  
  how_many = {}
  
  num_of_rolls.times do |roll| 

    # Here's our roll_dice method again, just need to get a total
    # Helpful to imagine we're rolling one at a time and then adding them
    total = 0    
    num_of_dice.times do |i|
      total += (1..6).to_a.sample
    end

    # Now we're seeing if we already have that total in the hash
    # that will be used to output our chart.  If we do we go ahead and 
    # increment it one, otherwise we create it.
    how_many.has_key?(total) ? how_many[total] += 1 : how_many[total] = 1

  end

  # Sorting the how_many hash so so out output below is in order
  how_many = how_many.sort.to_h

  # Interate through the hash, puts each key and then a number of pound signs
  # determined by the value.  Probably a more elegant way to get the spacing
  # correct.
  how_many.each do |key, value|
    if key < 10
      puts "#{key}:  " + ("#" * value)
    else
      puts "#{key}: " + ("#" * value)
    end
  end

end


def fibonacci(num)
  # Need to setup several variables.
  previous = 1
  current = 1
  total = 0
  index = 0
  output = []

  # Our loop steps through the fibonacci sequence, with each
  # interation it increments itself based on the total from 
  # the last loop.
  while index <= num
    previous = current
    current = total
    total = previous + current
    output << total
    index += 1

    # Outputting the variables after each run was helpful
    # puts "sequence #{index}"
    # puts "previous is #{previous}"
    # puts "current is #{current}"
    # puts "total is #{total}"
    # puts "\n\n"
  end

  # Implicit return
  output
  
end