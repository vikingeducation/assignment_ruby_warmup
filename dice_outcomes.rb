def dice_outcomes(dice, rolls)
  outcomes = {}
  rolls.times do 
    outcome = rand(6 * dice) + 1
    if outcomes[outcome]
      outcomes[outcome] += 1
    else
      outcomes[outcome] = 1
    end
  end
  (1..(dice*6)).each do |n|
      puts "#{n}\: " + ("#" * outcomes[n]) if outcomes[n]
  end
  outcomes 
end

dice_outcomes(4, 100)