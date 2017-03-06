def dice_roll_outcomes(dice, rolls)
	# set up hash 
  results = {}
  
  min = dice * 1
  max = dice * 6
  
  # populate hash with possible outcomes
  (min..max).each do | outcome |
  	results[outcome] = ""
  end
  
  rolls.times do 
  
    sum = 0

    dice.times do
      sum+= rand(1..6)
    end
    
    # add pound sign for each outcome
    results[sum] += "#"
  end
  
  # print outcomes
  results.each do | outcome, count |
  	puts "#{outcome}: #{count}\n"
  end
end
  
dice_roll_outcomes(3, 100)
  