def roll_dice(num)
	dice_array = []	
	num.times do
		dice_array.push(rand(1..6))
	end
	dice_array.inject { |sum, x | sum + x }
end

roll_dice(6)
roll_dice(4)

def dice_outcomes(num_dice, roll_times)
	num_dice.times do
		roll_times.times do
			rand(1..6)
		end
	end
end

dice_outcomes(3, 100)

def fibonacci(num)
	(1..num).map {|i| fibonacci(i)}
	if num == 1
		1
	elsif num == 2
		1
	else 
		fibonacci(num-1) + fibonacci(num-2)
	end
end

fibonacci(7)
