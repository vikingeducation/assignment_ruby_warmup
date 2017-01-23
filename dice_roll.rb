
def dice_roll(n=1)
	dice = (1..6).to_a
	n.times do |num|
		puts dice.sample
	end
end

dice_roll(18)