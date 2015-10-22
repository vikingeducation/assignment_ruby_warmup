def roll_dice dice=1
  result = 0
  dice.times { result += rand(1..6) }
  result
end

def dice_outcomes(dice, rolls)
  # Generate the outcomes
  results = {}
  rolls.times do
    current_result = roll_dice(dice)
    if results[current_result]
      results[current_result] += 1
    else
      results[current_result] = 1
    end
  end

  # Output the outcomes graphically
  results_array = results.to_a.sort
  results_array.each do |result_pair|
    puts "#{result_pair.first}: #{'#' * result_pair.last}"
  end

  results
end

puts dice_outcomes(3, 100)