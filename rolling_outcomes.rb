def dice_outcomes(dice, total_rolls)
  # set up hash with possible results
  tally_results = {}

  min = dice * 1
  max = dice * 6

  # pre-populate the hash with empty strings
  (min..max).each do | result |
    tally_results[result] = ""
  end


  # total rolls
  total_rolls.times do | current_roll |
    sum = 0

    # each roll results
    dice.times do
      sum += rand(6) + 1
    end

    # for testing
    # puts "#{current_roll + 1}: #{sum}"

    # add counter '#' to empty string
    tally_results[sum] += "#"
  end

  # print visual chart
  tally_results.each do | result, tally |
    puts "#{result}: #{tally}\n"
  end
end

dice_outcomes(3,100)