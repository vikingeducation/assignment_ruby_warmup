require_relative 'roll_dice' # DRY using existing method

def dice_outcomes(num_dice, num_rolls)
  results = {}

  # create hash of all possible outcomes and initialize to 0
  (num_dice * 1..num_dice * 6).each { |num| results[num] = 0 }

  # increment hash values with results
  num_rolls.times { results[roll_dice(num_dice)] += 1 }

  # display output
  results.each do |key, val|
    # create #'s
    barchart = ''
    val.times { barchart << '#' }
    # format output
    puts (key.to_s << ':').ljust(4) + barchart
  end  
end

dice_outcomes(3, 100)
