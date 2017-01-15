def dice_outcomes (number_dice, number_times_roll)
  sides_of_die = 6
  max_roll = number_dice * sides_of_die
  possible_rolls = Array.new(max_roll)

  (0..(max_roll-1)).each do |p|
    possible_rolls[p] = 0
  end

  number_times_roll.times do
    roll = rand(number_dice..max_roll)
    possible_rolls[roll - 1] += 1
  end

  ((number_dice-1)..(max_roll-1)).each do |p|
    print "#{p+1}: "
    (possible_rolls[p]).times do
      print "#"
    end
    puts ""
  end
end

dice_outcomes(3, 100)
