def dice_outcomes(number_of_dice, number_of_rolls)

  outcomes = {}
  current_roll_total = 0

  number_of_rolls.times do
    current_roll_total = 0
	  number_of_dice.times do
	    current_roll_total += (1..6).to_a.sample
	  end
    outcomes[current_roll_total] ? outcomes[current_roll_total] += 1 : outcomes[current_roll_total] = 1
  end

outcomes.sort.to_h.each do |key, value|
  puts "#{key}: #{'#' * value}"
end

end

dice_outcomes(3, 100)
