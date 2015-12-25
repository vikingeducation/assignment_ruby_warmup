def roll_dice(num)
	return num * 6
end

roll_dice(6)
roll_dice(4)

def dice_outcomes(num, roll_times)

end

def fibonacci(num)
	fib_array = []
	if num == 1
		1
	elsif num == 2
		1
	else 
		num.times do 
			fibonacci(num-1) + fibonacci(num-2)
		end
	end
end

fibonacci(7)