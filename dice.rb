def roll_dice(dice=1)
  total = 0

  dice.times do
    total +=rand(6) + 1
  end

  total
end

puts roll_dice(3)

def dice_outcomes(dice=1, rolls=1)
  outcomes = {}

  (dice * 6).times do |number|
    outcomes[number + 1] = 0
  end

  rolls.times do 
    outcomes[roll_dice(dice)] += 1
  end
  
  outcomes.each do |key, value|
    result = '#' * value
    puts "#{key}: #{result}"
  end
end

puts dice_outcomes(2, 100)