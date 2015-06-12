def roll_dice(n=1)
	max = (n*6)-n+1
	n + rand(max)
end


def dice_outcomes(dice,rolls)
	results={}

	# Determines the number of digits in largest answer for print spacing
	spaces = (dice*6).to_s.size + 1

	# Builds Answer hash with key values. Could prob skip but won't show numbers not rolled
	(dice..dice*6).each do |n|
		results[n] = 0
	end

	# Add values to answer hash
	rolls.times do 
		num = roll_dice(dice)
		results[num] += 1
	end

	#Prints results to screen
	results.each do |num, res|
		t = spaces - num.to_s.size
		print "#{num}:"
		t.times {print " "}
		res.times {|n| print "#"}
		puts ""
	end


end

puts "How many dice should we roll?"
dice = gets.chomp.to_i
puts "How many times should we roll them?"
rolls = gets.chomp.to_i

dice_outcomes(dice,rolls)