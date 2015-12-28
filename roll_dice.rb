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
		dice_array = []
		dice_sum = []
		roll_times.times do
			num_dice.times do
				dice_array.push(rand(1..6))
			end
			dice_key = dice_array.inject { |sum, x | sum + x }
			dice_sum.push(dice_key)
			dice_array = []
		end
		count_sum = Hash.new 0
		dice_sum.each do |number|
			count_sum[number] += 1
		end
		count_sum.each { |key, value| puts "#{key}: #{value.times do print '#' end }" }
end

dice_outcomes(3, 20)

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
