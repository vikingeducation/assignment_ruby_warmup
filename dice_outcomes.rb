def dice_outcome (dice = 1, rolls = 100)
	results = {}

	(dice..dice*6).each do |i|
		results [i] = 0
	end

	rolls.times do |i|
		results [roll_dice(dice)] += 1
	end

	results.keys.each do |num|
		print "#{num}: ".ljust(4)
		results [num].times {print "#" }
		print "\n"
	end
	results
end