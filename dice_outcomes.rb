def roll_dice(n)
  dice = [1,2,3,4,5,6]
  value = 0
  n.times do 
    value += dice.sample
  end
  value
end


def dice_outcomes(dice, rolls)
  outcomes = Hash.new(0)
  rolls.times do 
    outcomes[roll_dice(dice)] += 1
  end
  
  outcomes = outcomes.sort.to_h
  
  outcomes.each do |number, times|
    puts "#{number}: #{"#" * times}"
  end
  
end

p dice_outcomes(3, 100)