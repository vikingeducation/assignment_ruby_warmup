def dice_outcomes(number_of_dice, times_to_roll)
	possible_outcomes = Array.new(number_of_dice*5 + 1, 0)
	times_to_roll.times do |i|
		result = roll_dice(number_of_dice)
		possible_outcomes[result - number_of_dice] = possible_outcomes[result - number_of_dice] + 1
	end
	if number_of_dice * 6 > 99
		left_adjust_val = 5
	elsif number_of_dice * 6 > 9
		left_adjust_val = 4
	else
		left_adjust_val = 3
	end
	possible_outcomes.each_with_index do |num, i|
		puts "#{i+number_of_dice}: ".ljust(left_adjust_val) + "#"*num
	end
end

def roll_dice(n = 1)
	dice_values = (1..6).to_a
	sum = 0
	n.times	do |i|
		sum += dice_values.sample
	end
	sum
end

dice_outcomes(3,100)