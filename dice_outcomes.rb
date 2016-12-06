def dice_outcomes(dice, rolls)
  outcomes = {}
  rolls.times do
    total = 0
    dice.times do
      total += rand(6) + 1
    end
    outcomes[total] = outcomes[total]? outcomes[total] + 1 : 1
  end
  (dice..(dice*6)).each do |n|
    puts "#{n}\: #{"#" * outcomes[n] if outcomes[n]}"
  end
  outcomes
end

p dice_outcomes(3, 128)
