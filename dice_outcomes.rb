def roll_dice(num=1)
	result = 0
	
	num.times do |dice_no| 
		result += rand(6) + 1
	end
	return result
end

def dice_outcomes(num,times_to_roll)
	
	if times_to_roll < num 
		times_to_roll = num
	end

    dice_roll = Hash.new(0)
	
	no_of_rounds = times_to_roll / num

	no_of_rounds.times do
       dice_roll[roll_dice(num)] += 1
	end

	num = times_to_roll % num
	if num > 0
		 dice_roll[roll_dice(num)] += 1
	end
	
	puts dice_roll.inspect

	dice_roll.sort.map do |ind,value|
		str="#".rjust(value,'#')
		puts "#{ind.to_s.rjust(3,' ')}:  #{str}"
	end

end

dice_outcomes(3,100)