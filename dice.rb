def roll_dice dice=1
  result = 0
  dice.times { result += rand(1..6) }
  result
end

def dice_outcomes(dice, rolls)
  results = {}
  rolls.times do
    current_result = roll_dice(dice)
    if results[current_result]
      results[current_result] += 1
    else
      results[current_result] = 1
    end
  end
  results
end

puts dice_outcomes(2, 50)