def dice_roll(n=1)
	dice = rand(1..6)
	dice * n
end

puts dice_roll 4
