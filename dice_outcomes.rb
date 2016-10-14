def roll_dice(n = 1)
  rolls = 0
  n.times do
    rolls += rand(6) + 1
  end
  return rolls
end



def dice_outcomes(num_dice, num_rolls)
  results = {}
  num_rolls.times do
    result = role_dice(num_dice)
    results[result] ||= 1
    results[result] &&= results[result] + 1
  end
  results = results.sort_by{|key, value| key}
  results.each { |key, value| puts "#{key}: ".ljust("#{key}: ".to_s.length + value, "#") }

end
puts dice_outcomes(3,100)
