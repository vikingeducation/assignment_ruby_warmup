def role_dice(dice = 1)
  total = 0
  dice.times do
    total += rand(6) + 1
  end
  return total
end

def dice_outcomes(dice, rolls)
  results = {}
  rolls.times do
    result = role_dice(dice)
    results[result] ||= 1
    results[result] &&= results[result] + 1
  end
  results = results.sort_by{|key, value| key}
  results.each { |key, value| puts "#{key}: ".ljust("#{key}: ".to_s.length + value, "#") }
end

puts dice_outcomes(3,100)
