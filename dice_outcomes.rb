def dice_outcomes (num_dice, times_rolled)

  outcomes = {}
  dice = (1...6).to_a

  times_rolled.times do
  	current_roll_total = 0

  num_dice.times do
  	current_roll_total += dice.sample
  end

  	outcomes[current_roll_total].nil? ? outcomes[current_roll_total]=1 : outcomes[current_roll_total]+=1
  end

outcomes.sort.each do |roll, frequency|
	puts "#{roll}: " + "#" * frequency
  end

end

dice_outcomes(3,100)
