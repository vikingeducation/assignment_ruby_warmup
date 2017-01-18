def roll_dice(num_dice = 1)
  dice = (1..6).to_a
  result = 0

  num_dice.times { result += dice.sample }

  result
end

def dice_outcomes(num_dice, num_rolls)
  result = {}

  num_rolls.times do
    current_roll = roll_dice(num_dice)
    if result.has_key?(current_roll)
      result[current_roll] += 1
    else
      result[current_roll] = 1
    end
  end

  result.keys.sort.each do |key|
    puts "#{key}".ljust(2) + ": " + "#{"#" * result[key]}"
  end
  
  result
end
