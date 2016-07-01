def roll_dice(number_of_roles)
	total = []
	die = [1,2,3,4,5,6]
	number_of_roles.times do 
		total <<  die.sample
	end
	return total.reduce(:+)
end

p roll_dice(3)