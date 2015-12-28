def roll_dice(number=1)
  result = 0
  randint = Random.new
  number.times do
    result += randint.rand(1..6)
  end
  result
end



def dice_outcomes(number, rolls)
  outcome_hash = {}
  (number..(number * 6)).each do |entry|
    outcome_hash[entry] = 0
  end

  rolls.times do |result|
    outcome = roll_dice(number)
    outcome_hash[outcome] += 1
  end

  outcome_hash.each do |key, value|
    puts "#{key}: " + "#" * value
  end
end