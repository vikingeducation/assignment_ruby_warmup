def dice_outcomes (num_dice, num_rolls)
	outcomes={3=>0, 4=>0, 5=>0, 6=>0, 7=>0, 8=>0, 9=>0, 10=>0, 11=>0, 12=>0, 13=>0, 14=>0, 15=>0, 16=>0, 17=>0, 18=>0}
	num_rolls.times do
		num_dice.times do
			a=rand(1..6)
			b=rand(1..6)
			c=rand(1..6)
			roll=a+b+c
			outcomes[roll]+=1
		end
	end
	i=3
	while i<=18
		puts "#{i}:\t#{'#'*outcomes[i]}"
		i=i+1
	end
end


dice_outcomes(3, 100)