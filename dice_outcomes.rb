def dice_outcomes ( dice = 1, rolls = 1)
	tally = []
	roll_count = 0
	while roll_count < rolls 
		score = 0
		dice.times do |roll|
			score += rand(1..6).to_i
		end
		tally.push score 
		roll_count += 1
	end
	counts = Hash.new 0
	tally.sort.each do |sum|
		counts[sum] += 1
	end
	counts.each do |sum, total|
		if sum < 10
			puts "#{sum}: " + ("#" * total.to_i)
		else
			puts "#{sum}: " + ("#" * total.to_i)
		end
	end
end

dice_outcomes(3, 100)