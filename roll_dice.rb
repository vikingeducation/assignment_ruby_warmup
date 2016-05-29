def roll_dice(dice = 1)
	(1..dice).inject(0) {|sum, n| sum + rand(6) + 1} 
end

# puts roll_dice(3)

def dice_outcomes(dice = 1, roles = 1)
	output = Hash.new
	(1*dice..dice*6).to_a.each {|n| output[n] = 0}

	roles.times do |roll|
		roll_outcome = roll_dice(dice)
		output[roll_outcome] += 1
	end
	output.each {|x, y| puts "#{x}: #{"#"*y}"}
end

dice_outcomes(3, 100)