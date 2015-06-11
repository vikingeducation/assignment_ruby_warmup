def dice_outcome(sides, dice, max)

	# Get results and store them in Array

	arr = []
	(sides * dice + 1).times do |i| # to set all array terms to 0, take the number of sides of dice, times the number of dice used
		arr[i] = 0
	end

	max.times do
		arr[ roll_dice(sides, dice) ] += 1 # add one to array term if the number is rolled.
	end

	# Print results
	(sides * dice + 1).times do |i|
		if arr[i] != 0
			string = ""
			arr[i].times do
				string += "#"
			end
			puts("#{i}:	" + string)
		end
	end

end
