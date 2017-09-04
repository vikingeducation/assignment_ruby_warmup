require './roll_dice.rb'

def dice_outcomes(number_of_dice = 1, rolls = 1)
  results = {}

  rolls.times do
    roll_total = roll_dice(number_of_dice)
    results[roll_total] ||= 0
    results[roll_total] += 1
  end

  number_of_dice.upto(number_of_dice * 6) do |roll_total|
    if !results[roll_total]
      hash_string = ""
    else
      hash_string = '#' * results[roll_total]
    end
    puts "#{roll_total}:".ljust(4) + hash_string
  end

  sorted_results = Hash[results.sort]
  return sorted_results
end
