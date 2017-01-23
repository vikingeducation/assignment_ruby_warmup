def roll_dice(n=1)
	sum = 0
	dice = (1..6).to_a
	n.times do |num|
		sum += dice.sample
	end
	puts sum
end

roll_dice(8)