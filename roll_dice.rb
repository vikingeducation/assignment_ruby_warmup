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
		count_sum.each do |key, value| 
			count = '#' * value
			puts "#{key}: #{count}"
		end
end

dice_outcomes(3, 20)

def fibonacci(num)
	a = 0
	b = 1
	num.times do 
		a, b = b, a + b
	end
	a
end

fibonacci(7)

def stock_picker(arr)
	pick_this = []
	difference = 0
	first_pick = 0
	last_pick = 0
	arr.each_with_index do |num1, i1|
		arr.each_with_index do |num2, i2|

			if  i2 > i1 && num2 - num1 > difference
				difference = num2 - num1
				first_pick = num1
				last_pick = num2
				pick_this[0] = i1
				pick_this[1] = i2
			end
		end
	end
	pick_this
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

def anagrams(string)
end
