def roll_dice(n = 1)
  roll_results = []

  n.times do |result|
    roll_results << rand(1..6)
  end

  p roll_results.reduce(:+)
end

roll_dice(2)
