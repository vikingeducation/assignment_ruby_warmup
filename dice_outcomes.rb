def dice_outcomes(dice=1, rolls=1)

  counts = Hash.new(0)
  rolls.times do
    counts[rand(dice..6*dice)] += 1
  end
  counts = counts.to_a.sort
  counts.each do |key, value|
    puts "#{key}:".ljust(4) +  "#{'#' * value}"
  end
end
dice_outcomes(3, 100)