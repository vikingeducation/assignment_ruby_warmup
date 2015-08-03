def roll_dice(n)
	outcome = 0
	n.times do |i|
		outcome += rand(1..6)
	end
	outcome
end

def dice_outcomes(dice, rolls)
	outcomes = ('0' * (dice * 6)).split('').map {|i| i = ''}
	rolls.times do |i|
		outcome = roll_dice(dice)
		outcomes[outcome - 1] += '#'
	end
	outcomes.each_with_index do |outcome, i|
		puts "#{(i + 1).to_s}: #{outcome}" if outcome.length > 0
	end
end

# puts roll_dice(6)
# puts dice_outcomes(3, 100)