def roll_dice(n = 1)
	#gets random number
	puts n * rand(1..6)
end

#roll_dice(2)

def dice_outcomes(dice, total_rolls)
	#initiate empty array
	dice_total_array = []
	#rolls dice x amount of times
	total_rolls.times do |i|
      #gets random number and assigns to variable
	  die_total = rand(1..6)
      #puts roll of die into array
	  dice_total_array << die_total
	end

	puts dice_total_array

end

dice_outcomes(2, 5)